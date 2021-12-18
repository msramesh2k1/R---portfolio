import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:r_portfolio/second_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  final projecttitles = [
    'Ecommerce App',
    'News - O',
    'Calculator',
  ];
  final projectimage = [
    "https://i.ibb.co/wsfTqkc/Introduction-to-Dart-10.png",
    "https://i.ibb.co/1XytBQk/Introduction-to-Dart-9.png",
    "https://i.ibb.co/dbBJxFc/Introduction-to-Dart-8.png"
  ];
  final url = [
    "https://github.com/msramesh2k1?tab=repositories",
    "https://github.com/msramesh2k1?tab=repositories",
    "https://github.com/msramesh2k1/Calculator---Flutter"
  ];
  PageController scrollController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: scrollController,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      const Text(
                        "Tech Stacks",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'HolidayFree',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://cdn.iconscout.com/icon/free/png-256/flutter-2038877-1720090.png",
                            height: 20,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/768px-Python-logo-notext.svg.png",
                            height: 20,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.network(
                            "https://cdn3.iconfinder.com/data/icons/social-media-2169/24/social_media_social_media_logo_git-512.png",
                            height: 20,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.network(
                            "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/181_Java_logo_logos-512.png",
                            height: 20,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.network(
                            "https://cdn4.iconfinder.com/data/icons/logos-brands-in-colors/3000/figma-logo-512.png",
                            height: 20,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.network(
                            "https://cdn4.iconfinder.com/data/icons/google-i-o-2016/512/google_firebase-2-512.png",
                            height: 30,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      const Text(
                        "Projects",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'HolidayFree',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50.0,
                          right: 50,
                        ),
                        child: Container(
                          height: 280,
                          color: Colors.black,
                          width: MediaQuery.of(context).size.width,
                          child: GridView.builder(
                            itemCount: projecttitles.length,
                            scrollDirection: Axis.vertical,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(70.0),
                                child: GestureDetector(
                                  onTap: () {
                                    launch(url[index]);
                                  },
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.black45,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              projectimage[index],
                                            ),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Colors.transparent)),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                color: Colors.black,
              ),
              Positioned(
                bottom: 20,
                right: 40,
                child: GestureDetector(
                    onTap: () {
                      scrollController.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.linear);
                    },
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(360 / 360),
                      child:
                          Lottie.asset('assets/images/mouse.json', height: 50),
                    )),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 60,
                      ),
                      Spacer(),
                      Text(
                        "Contact : msramesh2k1@gmail.com for any kind of Queries",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'HolidayFree',
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Developed in 💙 with Flutter",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'HolidayFree',
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                ),
                color: Colors.black,
              ),
              Positioned(
                bottom: 20,
                right: 40,
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondScreen()));
                    },
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(360 / 360),
                      child:
                          Lottie.asset('assets/images/home.json', height: 50),
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
