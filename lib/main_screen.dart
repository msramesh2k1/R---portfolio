import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:r_portfolio/second_screen.dart';

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
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Hero(
                  tag: "logo",
                  child: Image.asset(
                    "assets/images/logo5.png",
                    height: 600,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 40,
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              transitionDuration: const Duration(seconds: 2),
                              pageBuilder: (_, __, ___) =>
                                  const SecondScreen()));
                    },
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(270 / 360),
                      child:
                          Lottie.asset('assets/images/mouse.json', height: 50),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
