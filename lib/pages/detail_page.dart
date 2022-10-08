import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../utils.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: false,
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        centerTitle: false,
        leading: DelayedDisplay(
          delay: const Duration(seconds: 1),
          child: BouncingWidget(
            duration: const Duration(seconds: 1),
            scaleFactor: 1,
            onPressed: () {},
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: black,
                size: 30,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              DelayedDisplay(
                delay: const Duration(seconds: 1),
                child: BouncingWidget(
                  duration: const Duration(seconds: 1),
                  scaleFactor: 1,
                  onPressed: () {},
                  child: Center(
                    child: Container(
                      height: 380,
                      width: 250,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://pm1.narvii.com/7103/89ab3f99f2d91f34a0a2d8057e6777f14fff4e9ar1-1334-807v2_hq.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              DelayedDisplay(
                delay: const Duration(seconds: 1),
                child: BouncingWidget(
                  duration: const Duration(seconds: 1),
                  scaleFactor: 1,
                  onPressed: () {},
                  child: Text(
                    "Brawl Stars",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: black,
                      fontSize: 22,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              DelayedDisplay(
                delay: const Duration(seconds: 1),
                child: BouncingWidget(
                  duration: const Duration(seconds: 1),
                  scaleFactor: 1,
                  onPressed: () {},
                  child: Text(
                    "1,3M+players",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: black,
                      fontSize: 16,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              DelayedDisplay(
                delay: const Duration(seconds: 1),
                child: ReadMoreText(
                  'adalah arena pertempuran online multipemain dan video game penembak pahlawan orang ketiga yang dikembangkan dan diterbitkan oleh perusahaan video game Finlandia Supercell. Ini dirilis di seluruh dunia pada 12 Desember 2018, di iOS dan Android, In May 2020, a game update added a new reward system called “Brawl Pass”. The Brawl Pass is the games version of a battle pass. When players compete in battles, they earn Tokens to progress along the Brawl Pass. Players can earn Boxes, Gems, skins, Pins emojis that can be used during battles or in a team game room Coins, Power Points, and Brawlers from the pass. There are two types of Brawl Pass. All players have the free Brawl Pass by default. Players can purchase the premium Brawl Pass with Gems.',
                  trimLines: 5,
                  preDataText: "Brawl Stars",
                  preDataTextStyle: GoogleFonts.montserrat(
                    color: black,
                    fontSize: 14,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
                  ),
                  style: GoogleFonts.montserrat(
                    color: black,
                    fontSize: 14,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500,
                  ),
                  colorClickableText: purple,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Read More...',
                  trimExpandedText: ' Show less',
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              DelayedDisplay(
                delay: const Duration(seconds: 1),
                child: SizedBox(
                  width: 300,
                  height: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(purple),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          // side: BorderSide(color: purple)
                        ))),
                    onPressed: () {},
                    child: DelayedDisplay(
                      delay: const Duration(seconds: 1),
                      child: Text(
                        "Hire a Coach",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: white,
                          fontSize: 14,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              DelayedDisplay(
                delay: const Duration(seconds: 1),
                child: TextButton(
                  child: Text(
                    "About Brawl Stars",
                    style: GoogleFonts.montserrat(
                      color: black,
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
