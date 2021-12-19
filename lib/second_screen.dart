import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:r_portfolio/third_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool showtext = false;
  bool maintext = false;
  String details =
      "Hello All ,This is Ramesh M S ,Doing my Graduation at Sathyabama Univeristy , Chennai,I am Flutter Developer ,  Open Source Contributor and mentor as well";

  @override
  void initState() {
    Timer(const Duration(seconds: 13), () {
      setState(() {
        showtext = true;
      });
    });
    Timer(const Duration(seconds: 2), () {
      setState(() {
        maintext = true;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/dp4.png",
              color: Colors.black87,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.srcOver,
              height: 200,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Hero(
                      tag: "logo",
                      child: Image.asset(
                        "assets/images/logo5.png",
                        height: 100,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: GestureDetector(
                        onTap: () {
                          launch(
                              "https://drive.google.com/file/d/1bn-RWZs4F9tjXG938gu5_N-XlfIwWhSS/view?usp=sharing");
                        },
                        child: const Image(
                          image: NetworkImage(
                            "https://i.ibb.co/jhPDJXT/Copy-of-Copy-of-Untitled-1.png",
                          ),
                          height: 180,
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  showtext
                      ? Center(
                          child: Text(
                            'About',
                            style: TextStyle(
                              fontFamily: 'HolidayFree',
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red[900],
                              fontSize: 20,
                              color: Colors.red[900],
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
              showtext
                  ? const SizedBox(
                      height: 40,
                    )
                  : const SizedBox(),
              showtext
                  ? Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 8),
                      child: Text(
                        details,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'HolidayFree',
                          height:
                              MediaQuery.of(context).size.width < 600 ? 3 : 1,
                          fontSize: 22,
                          color: Colors.white,
                          wordSpacing: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ))
                  : const SizedBox(),
              maintext
                  ? Center(
                      child: SizedBox(
                      width: 600.0,
                      child: DefaultTextStyle(
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'HolidayFree',
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        ),
                        child: AnimatedTextKit(
                          onFinished: () {
                            setState(() {
                              maintext = false;
                            });
                          },
                          isRepeatingAnimation: false,
                          totalRepeatCount: 0,
                          animatedTexts: [
                            TypewriterAnimatedText('Hello All'),
                            TypewriterAnimatedText('This is Ramesh M S'),
                            TypewriterAnimatedText(
                                'Doing my Graduation at Sathyabama Univeristy , Chennai'),
                            TypewriterAnimatedText(
                                'I am Flutter Developer ,  Open Source Contributor and mentor as well'),
                          ],
                        ),
                      ),
                    ))
                  : const SizedBox(),
              const SizedBox(
                height: 30,
              ),
              showtext
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            launch("https://www.linkedin.com/in/msramesh2k1/");
                          },
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/128/2111/2111499.png",
                            height: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            launch("https://github.com/msramesh2k1");
                          },
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/128/733/733553.png",
                            height: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            launch("https://twitter.com/msramesh2k1");
                          },
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/128/733/733579.png",
                            height: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            launch("https://www.instagram.com/msramesh_dev/");
                          },
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/128/1384/1384063.png",
                            height: 20,
                          ),
                        )
                      ],
                    )
                  : const SizedBox(),
              const Spacer(),
              const Spacer(),
            ],
          ),
          Positioned(
            bottom: 20,
            right: 40,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdScreen()));
                },
                child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(270 / 360),
                  child: Lottie.asset('assets/images/mouse.json', height: 50),
                )),
          )
        ],
      ),
    );
  }
}
