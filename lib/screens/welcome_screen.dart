import 'package:animate_do/animate_do.dart';
import 'package:education/screens/home_screen.dart';
import 'package:education/utils/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height / 1.6,
                  decoration: const BoxDecoration(color: Colors.white),
                ),
                Container(
                  width: size.width,
                  height: size.height / 1.6,
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70),
                    ),
                  ),
                  child: const Center(
                    child: Image(
                      image: AssetImage('assets/images/books.png'),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: size.width,
                height: size.height / 2.666,
                decoration: const BoxDecoration(
                  color: primaryColor,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(top: size.height * 0.05),
                width: size.width,
                height: size.height / 2.666,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: FadeInUp(
                  delay: const Duration(milliseconds: 250),
                  child: Column(
                    children: [
                      const Text(
                        "Learning Is Everything",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            wordSpacing: 2),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.17),
                        child: const Text(
                          "Learning with pleasure with Dear Programmer, Wherever you are.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      ),
                      SizedBox(height: size.height * 0.05),
                      Material(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(15),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.09,
                              vertical: size.width * 0.04),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Get Start",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  letterSpacing: 1),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
