import 'package:google_fonts/google_fonts.dart';

import '../../core/widgets/time_lines_widgets.dart';
import 'package:flutter/material.dart';

class PersonalSummaryWidget extends StatelessWidget {
  const PersonalSummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Text(
                  'BIOGRAPHY',
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
                  '''I am enthusiastic, self-taught, I like constant personal improvement, with the aim of offering better solutions to problems both in work environments and in daily life. I maintain good interpersonal relationships with my co-workers. ''',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                  softWrap: true,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'CONTACT',
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
                  'alcampospalacios@gmail.com',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'SERVICES',
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
                  'Software Architect',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Mobile Application Developer',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Web Application Developer',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.black12, width: 0.5),
              borderRadius: const BorderRadius.all(Radius.circular(130)),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(120)),
              child: Image.asset(
                'assets/images/alcampos.jpg',
                height: MediaQuery.of(context).size.height * 0.44,
                width: MediaQuery.of(context).size.width * 0.15,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Text(
                  'YEARS OF\n EXPERIENCE',
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
                  '6',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'SATISFACTION CLIENT',
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
                  '100%',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'PROJECTS EXPERIENCE TIME LINE 6 YEARS',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 12,
                    ),
                  ),
                ),
                const TimeLinesWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
