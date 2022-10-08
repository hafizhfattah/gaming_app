import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:gaming_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utils.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController isController = PageController();

    return Scaffold(
      backgroundColor: newPink,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 400,
                    child: PageView(
                      controller: isController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        DelayedDisplay(
                          delay: const Duration(seconds: 2),
                          child: BouncingWidget(
                            duration: const Duration(seconds: 2),
                            scaleFactor: 1,
                            onPressed: () {},
                            child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/3d%20icons%2Fheadphone-dynamic-color.png?alt=media&token=f5d0f80e-e8ef-4dce-8389-d8d24854f108",
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        DelayedDisplay(
                          delay: const Duration(seconds: 2),
                          child: BouncingWidget(
                            duration: const Duration(seconds: 2),
                            scaleFactor: 1,
                            onPressed: () {},
                            child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/3d%20icons%2Fmic-dynamic-color.png?alt=media&token=14697631-d13d-4e63-bfc5-afc4c50bf787",
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        DelayedDisplay(
                          delay: const Duration(seconds: 2),
                          child: BouncingWidget(
                            duration: const Duration(seconds: 2),
                            scaleFactor: 1,
                            onPressed: () {},
                            child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/3d%20icons%2Fcomputer-dynamic-color.png?alt=media&token=333657dd-1921-4bdc-ae7f-475dfe157ccf",
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 350,
                    left: 170,
                    child: DelayedDisplay(
                      delay: const Duration(seconds: 2),
                      child: BouncingWidget(
                        duration: const Duration(seconds: 2),
                        scaleFactor: 1,
                        onPressed: () {},
                        child: SmoothPageIndicator(
                          effect: const WormEffect(
                              dotColor: white,
                              dotHeight: 12,
                              dotWidth: 12,
                              activeDotColor: purple,
                              type: WormType.thin),
                          onDotClicked: (index) => isController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          ),
                          controller: isController,
                          count: 3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              DelayedDisplay(
                delay: const Duration(seconds: 2),
                child: BouncingWidget(
                  duration: const Duration(seconds: 2),
                  scaleFactor: 1,
                  onPressed: () {},
                  child: Text(
                    "Become better at video games in a second!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: white,
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              DelayedDisplay(
                delay: const Duration(seconds: 2),
                child: BouncingWidget(
                  duration: const Duration(seconds: 2),
                  scaleFactor: 1,
                  onPressed: () {},
                  child: Text(
                    "Become a way better player with our mobile app! Never lose a game after our coaching from the best players in the world!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: white,
                      fontSize: 15,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              DelayedDisplay(
                delay: const Duration(seconds: 2),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: white,
                  child: GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: newPink,
                      size: 30,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              DelayedDisplay(
                delay: const Duration(seconds: 2),
                child: BouncingWidget(
                  duration: const Duration(seconds: 2),
                  scaleFactor: 1,
                  onPressed: () {},
                  child: Text(
                    "10 million Gamers rock with us!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: white,
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
