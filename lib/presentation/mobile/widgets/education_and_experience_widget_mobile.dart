import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationAndExperienceWidgetMobile extends StatelessWidget {
  const EducationAndExperienceWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Education and Experience',
            style: GoogleFonts.notoSerif(
              textStyle: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
        const SizedBox(height: 10),
        Text('2011-2017',
            style: GoogleFonts.notoSerif(
              textStyle: const TextStyle(
                color: Colors.black45,
                fontSize: 12,
              ),
            )),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Software Engineer',
          style: GoogleFonts.notoSerif(
            textStyle: const TextStyle(
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
        Text(
          'University of Informatic Sciences (UCI)',
          style: GoogleFonts.notoSerif(
            textStyle: const TextStyle(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 25),
        Text(
          '2017-2020',
          style: GoogleFonts.notoSerif(
            textStyle: const TextStyle(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Developer of NOVA desktop',
          style: GoogleFonts.notoSerif(
            textStyle: const TextStyle(
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
        Text(
          'Center of free solutions (CESOL)',
          style: GoogleFonts.notoSerif(
            textStyle: const TextStyle(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Teaching postgraduate courses about PROXY',
          style: GoogleFonts.notoSerif(
            textStyle: const TextStyle(
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
        Text(
          'Center of free solutions (CESOL)',
          style: GoogleFonts.notoSerif(
            textStyle: const TextStyle(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
        Text(
          'University of Informatic Sciences (UCI)',
          style: GoogleFonts.notoSerif(
            textStyle: const TextStyle(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 25),
        Text(
          '2021-Current',
          style: GoogleFonts.notoSerif(
            textStyle: const TextStyle(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Fronted developer of AKADEMOS',
          style: GoogleFonts.notoSerif(
            textStyle: const TextStyle(
              color: Colors.black87,
              fontSize: 18,
            ),
          ),
        ),
        Text(
          'Center of Technologies for Training (FORTES)',
          style: GoogleFonts.notoSerif(
            textStyle: const TextStyle(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Freelancer',
          style: GoogleFonts.notoSerif(
            textStyle: const TextStyle(
              color: Colors.black87,
              fontSize: 18,
            ),
          ),
        ),
        Text(
          'By my own',
          style: GoogleFonts.notoSerif(
            textStyle: const TextStyle(
              color: Colors.black45,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
