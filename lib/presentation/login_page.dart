import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              width: width,
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 150,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 14),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 242, 242, 242),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter your mobile number',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'we will send an SMS with a verification code to this number',
                          style: TextStyle(color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Color.fromARGB(255, 0, 0, 0),
                cursorWidth: 3,
                cursorHeight: 33,
                decoration: InputDecoration(
                    border: InputBorder.none, // Remove the default underline
                    hintText: '10-digital number',
                    hintStyle: TextStyle(fontSize: 22, color: Colors.grey)),
              ),
            ),
            GridView.builder(
              itemCount: 12,
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 30,
                    height: 30,
                    color: Colors.red,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
