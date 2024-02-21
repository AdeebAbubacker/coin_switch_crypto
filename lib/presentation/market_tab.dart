import 'package:flutter/material.dart';

class MyTabBarView extends StatefulWidget {
  const MyTabBarView({super.key});

  @override
  MyTabBarViewState createState() => MyTabBarViewState();
}

class MyTabBarViewState extends State<MyTabBarView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    setState(() {
      // Empty setState function to trigger a rebuild when the tab changes
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove the leading widget
        leadingWidth: 0,
        titleSpacing: 0,
        title: const Text('Tab Bar View'),
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          padding: const EdgeInsets.all(3),
          controller: _tabController,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: const Color.fromARGB(255, 116, 230, 120).withOpacity(0.5)),

          isScrollable: true, // Allow tabs to scroll horizontally

          tabs: const [
            Tab(text: 'Text 1'),
            Tab(text: 'Text 2'),
            Tab(text: 'Text 3'),
            Tab(text: 'Text 4'),
            Tab(text: 'Text 5'),
            Tab(text: 'Text 6'),
            Tab(text: 'Text 7'),
            Tab(text: 'Text 8'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text('One')),
          Center(child: Text('Two')),
          Center(child: Text('Three')),
          Center(child: Text('Four')),
          Center(child: Text('Five')),
          Center(child: Text('Six')),
          Center(child: Text('Seven')),
          Center(child: Text('Eight')),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }
}
