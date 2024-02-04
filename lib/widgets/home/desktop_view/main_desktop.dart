import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key, required this.onNavMenuTap});
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: screenWidth(context) / 10,
        vertical: screenHeight(context) / 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  textAlign: TextAlign.left,
                  'hi, i\'m Upendra',
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      color: AppColors.secondary_PastelBlue,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  textAlign: TextAlign.start,
                  ' a creative developer ',
                  style: GoogleFonts.abel(
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(1, 0, 0, 0),
                  child: SizedBox(
                    width: 280,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        onNavMenuTap(3);
                      },
                      child: Text(
                        "Got a project? Let's talk!",
                        style: GoogleFonts.gruppo(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 33,
                  ),
                  Text(
                    "I can ",
                    style: GoogleFonts.abel(
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0.0,
                      ),
                    ),
                  ),
                  AnimatedTextKit(
                    displayFullTextOnTap: true,
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'build your first app',
                        textStyle: GoogleFonts.abel(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                      TypewriterAnimatedText(
                        'edit your video',
                        textStyle: GoogleFonts.abel(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                      TypewriterAnimatedText(
                        'make you a logo',
                        textStyle: GoogleFonts.abel(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                      TypewriterAnimatedText(
                        'build you a website',
                        textStyle: GoogleFonts.abel(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                      TypewriterAnimatedText(
                        'make you a poster',
                        textStyle: GoogleFonts.abel(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Image.asset(
            'assets/flutter_dev.png',
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.height / 2.5,
          ),
        ],
      ),
    );
  }
}
