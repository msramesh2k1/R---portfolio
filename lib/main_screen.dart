import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:r_portfolio/custom_loader.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: PageView(
              controller: pageController,
              scrollDirection: Axis.vertical,
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black,
                      child: Image.asset(
                        "assets/images/logo2.png",
                        height: 600,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 40,
                      child: GestureDetector(
                          onTap: () {
                            pageController.nextPage(
                                duration: const Duration(seconds: 2),
                                curve: Curves.bounceInOut);
                          },
                          child: Lottie.asset('assets/images/mouse.json',
                              height: 50)),
                    )
                  ],
                ),

                //page2

                Container(
                  color: Colors.black,
                  
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
