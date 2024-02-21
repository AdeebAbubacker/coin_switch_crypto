// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:coinswitch_crypto/presentation/market/widgets/all_crypto_page.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:scrollable_tab_view/scrollable_tab_view.dart';

// class MarketPage2 extends StatefulWidget {
//   const MarketPage2({Key? key}) : super(key: key);

//   @override
//   State<MarketPage2> createState() => _MarketPage2State();
// }

// class _MarketPage2State extends State<MarketPage2>
//     with TickerProviderStateMixin {
//   late TabController controller;

//   @override
//   void initState() {
//     // Initialize the TabController with a length of 5 and a vsync provided by this class
//     controller = TabController(length: 4, vsync: this);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     // Dispose the TabController when the state is disposed to free up resources
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Coin Switch Crypto'),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               // TitleWidget widget that displays a centered title

//               // ScrollableTabBar widget that displays the tabs only without the content
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 child: ScrollableTabBar(
//                   padding: EdgeInsets.zero,
//                   labelColor: Colors.black,
//                   controller: controller,
//                   tabs: [
//                     Tab(
//                       child: Center(
//                         child: Text(
//                           'All',
//                           style: GoogleFonts.mPlus1p(
//                             color: Colors.black,
//                             fontSize: 10,
//                             fontWeight: FontWeight.w800,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Tab(
//                       child: Center(
//                         child: Text(
//                           'Top Gainers',
//                           style: GoogleFonts.mPlus1p(
//                             color: const Color.fromRGBO(0, 0, 0, 1),
//                             fontSize: 10,
//                             fontWeight: FontWeight.w800,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Tab(
//                       child: Center(
//                         child: Text(
//                           'Top Losers',
//                           style: GoogleFonts.mPlus1p(
//                             color: Colors.black,
//                             fontSize: 10,
//                             fontWeight: FontWeight.w800,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Tab(
//                       child: Center(
//                         child: Text(
//                           'Watchlist',
//                           style: GoogleFonts.mPlus1p(
//                             color: Colors.black,
//                             fontSize: 10,
//                             fontWeight: FontWeight.w800,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // TabBarView to display the content for each tab
//               SizedBox(
//                 height: MediaQuery.of(context).size.height -
//                     200, // Adjust the height as needed
//                 child: TabBarView(controller: controller, children: [
//                   AllCrypto(),
//                   Text('data2'),
//                   Text('data3'),
//                   Text('data4'),
//                 ]),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:coinswitch_crypto/core/constants/style.dart';
import 'package:coinswitch_crypto/presentation/market/widgets/all_crypto_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_tab_view/scrollable_tab_view.dart';

class MarketPage2 extends StatefulWidget {
  const MarketPage2({Key? key}) : super(key: key);

  @override
  State<MarketPage2> createState() => _MarketPage2State();
}

class _MarketPage2State extends State<MarketPage2>
    with TickerProviderStateMixin {
  late TabController controller;
  final double customTabWidth = 120.0; // Replace with your desired width

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Ensure tab labels adjust dynamically to available space
    return LayoutBuilder(
      builder: (context, constraints) {
        return MaterialApp(
          home: Scaffold(
            backgroundColor: Color.fromRGBO(18, 19, 24, 1),
            appBar: AppBar(
              title: Text(
                'Coin Switch Crypto',
                style: kAppBarTitleStyle,
              ),
              backgroundColor: Color.fromRGBO(18, 19, 24, 1),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  // TitleWidget widget that displays a centered title

                  // ScrollableTabBar with custom tabWidth and adjusted padding
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ScrollableTabBar(
                      isScrollable: true,

                      // padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      labelColor: Colors.black,
                      controller: controller,
                      labelStyle: GoogleFonts.mPlus1p(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 12, // Fixed font size
                      ),
                      tabs: [
                        Tab(
                          child: Container(
                            width: 70,
                            child: Text('All',
                                maxLines: 1, // Ensure single-line display
                                overflow: TextOverflow
                                    .ellipsis, // Ellipsis for overflow
                                style: kheadingStyle),
                          ),
                        ),
                        Tab(
                          child: Container(
                            width: 90,
                            child: Text('Top Gainers',
                                maxLines: 1, // Ensure single-line display
                                overflow: TextOverflow
                                    .ellipsis, // Ellipsis for overflow
                                style: kheadingStyle),
                          ),
                        ),
                        Tab(
                          child: Container(
                            width: 90,
                            child: Text('Top Losers',
                                maxLines: 1, // Ensure single-line display
                                overflow: TextOverflow
                                    .ellipsis, // Ellipsis for overflow
                                style: kheadingStyle),
                          ),
                        ),
                        Tab(
                          child: Container(
                            width: 80,
                            child: Text('Watchlist',
                                maxLines: 1, // Ensure single-line display
                                overflow: TextOverflow
                                    .ellipsis, // Ellipsis for overflow
                                style: kheadingStyle),
                          ),
                        ),
                      ],
                      indicatorSize:
                          TabBarIndicatorSize.label, // Match indicator size
                      indicatorColor: Colors.white,
                    ),
                  ),

                  // TabBarView to display the content for each tab
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 200,
                    child: TabBarView(
                      controller: controller,
                      children: [
                        AllCrypto(),
                        Text('data2'),
                        Text('data3'),
                        Text('data4'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
