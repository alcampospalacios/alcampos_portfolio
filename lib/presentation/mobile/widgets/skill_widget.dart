import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillWidget extends StatelessWidget {
  final String title;
  final String image;
  final String percentage;
  const SkillWidget({
    super.key,
    required this.title,
    required this.image,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.height * 0.1,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.black12,
            border: Border.all(color: const Color(0xfff3f3f3), width: 0.5),
            borderRadius: const BorderRadius.all(Radius.circular(50)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(
                  image,
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(percentage,
                    style: GoogleFonts.notoSerif(
                      textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 10,
                      ),
                    )),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(title,
              style: GoogleFonts.notoSerif(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),
              )),
        ),
      ],
    );
  }
}
