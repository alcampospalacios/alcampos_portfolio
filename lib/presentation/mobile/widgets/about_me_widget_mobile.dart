import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeWidgetMobile extends StatelessWidget {
  const AboutMeWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Software Engineer, Flutter developer',
            style: GoogleFonts.notoSerif(
              textStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            )),
        Text('Based on Spain',
            style: GoogleFonts.notoSerif(
              textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )),
      ],
    );
  }
}
