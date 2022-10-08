import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:gaming_app/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              DelayedDisplay(
                delay: const Duration(seconds: 1),
                child: BouncingWidget(
                  duration: const Duration(seconds: 1),
                  scaleFactor: 1,
                  onPressed: () {},
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: white,
                    backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                    ),
                  ),
                ),
              ),
              const Spacer(),
              DelayedDisplay(
                delay: const Duration(seconds: 1),
                child: BouncingWidget(
                  duration: const Duration(seconds: 1),
                  scaleFactor: 1,
                  onPressed: () {},
                  child: Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[600]!,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.dark_mode_rounded,
                      color: Colors.grey[600]!,
                      size: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DelayedDisplay(
                delay: const Duration(seconds: 1),
                child: BouncingWidget(
                  duration: const Duration(seconds: 1),
                  scaleFactor: 1,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Hey there, Fizfat",
                      style: GoogleFonts.montserrat(
                        color: Colors.grey[500]!,
                        fontSize: 16,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              DelayedDisplay(
                delay: const Duration(seconds: 1),
                child: BouncingWidget(
                  duration: const Duration(seconds: 1),
                  scaleFactor: 1,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Get bettter at gaming!",
                      style: GoogleFonts.montserrat(
                        color: black,
                        fontSize: 22,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20.0,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailPage()),
                      ),
                      child: const CustomContainer(
                        desc: "1,2M+players",
                        images:
                            "https://pm1.narvii.com/7103/89ab3f99f2d91f34a0a2d8057e6777f14fff4e9ar1-1334-807v2_hq.jpg",
                        name: "Brawl Stars",
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    const CustomContainer(
                      desc: "10,5M+players",
                      images:
                          "https://c4.wallpaperflare.com/wallpaper/684/922/527/gta-5-screenshot-4k-gta-online-wallpaper-preview.jpg",
                      name: "Grand Theft Auto",
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    const CustomContainer(
                      name: "Valorant",
                      images:
                          "https://www.kemperlesnik.com/wp-content/uploads/2020/04/valorant-official-art.jpg",
                      desc: "1,3M+players",
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    const CustomContainer(
                      desc: "500k+players",
                      images: "https://pbs.twimg.com/media/FB9s-7MWQAMMiVu.jpg",
                      name: "Clash of Clans",
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35.0,
              ),
              DelayedDisplay(
                delay: const Duration(seconds: 1),
                child: BouncingWidget(
                  duration: const Duration(seconds: 1),
                  scaleFactor: 1,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Recommended for you",
                      style: GoogleFonts.montserrat(
                        color: black,
                        fontSize: 22,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                    itemCount: images.length,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return DelayedDisplay(
                        delay: const Duration(seconds: 1),
                        child: Container(
                          height: 120,
                          margin: const EdgeInsets.only(bottom: 20),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                            image: DecorationImage(
                              image: NetworkImage(
                                images[index],
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                32.0,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name[index],
                                style: GoogleFonts.montserrat(
                                  color: white,
                                  fontSize: 20,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                desc[index],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  color: grey,
                                  fontSize: 14,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
