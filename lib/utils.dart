import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Colors
const white = Colors.white;

const grey = Color.fromRGBO(220, 218, 218, 1);
const scaffoldbg = Color.fromRGBO(223, 223, 223, 1);
const black = Color.fromRGBO(12, 7, 44, 1);
const newPink = Color.fromRGBO(213, 50, 86, 1);
const purple = Color.fromRGBO(76, 62, 208, 1);

//List
final List images = [
  "https://images.unsplash.com/photo-1594845222818-9097c52dabb5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bWluZWNyYWZ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://cdn.akamai.steamstatic.com/steam/apps/1332010/header.jpg",
  "https://pbs.twimg.com/media/FNpzF_qXMAE5Tte.jpg",
  "https://s3-eu-central-1.amazonaws.com/www-staging.esports.com/WP%20Media%20Folder%20-%20esports-com//var/app/current/web/app/uploads/2021/02/Riot-Games-League-of-legends-beginners-guide-1.jpg",
];

final List name = [
  "Minecraft",
  "Stray",
  "Cyberpunk 2077",
  "League of Legends",
];

final List desc = [
  "1,6M+players",
  "12,5M+players",
  "2,2M+players",
  "10M+players",
];

//Reusable
class CustomContainer extends StatefulWidget {
  final String name;
  final String desc;
  final String images;

  const CustomContainer({
    Key? key,
    required this.name,
    required this.desc,
    required this.images,
  }) : super(key: key);

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: const Duration(seconds: 2),
      child: Stack(
        children: [
          Container(
            height: 300.0,
            width: 220,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                  widget.images,
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
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: GoogleFonts.montserrat(
                    color: white,
                    fontSize: 20,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.desc,
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
          // Container(
          //   height: 300.0,
          //   width: 220,
          //   decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //         begin: Alignment.bottomCenter,
          //         end: Alignment.topCenter,
          //         colors: [
          //           Colors.black.withOpacity(0.4),
          //           Colors.transparent,
          //         ],
          //       ),
          //       borderRadius: const BorderRadius.all(
          //         Radius.circular(
          //           32.0,
          //         ),
          //       )),
          // )
        ],
      ),
    );
  }
}

//Methode
List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}

AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(images[pagePosition]))),
  );
}

imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.network(images[pagePosition]),
        ],
      ),
    ),
  );
}
