import 'package:flutter/material.dart';

import '../../core/widgets/time_lines_widgets.dart';

class PersonalSummaryWidgetMobile extends StatelessWidget {
  const PersonalSummaryWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.2,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            const Text(
              'BIOGRAPHY',
              style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              '''I am enthusiastic, self-taught, I like constant personal improvement, with the aim of offering better solutions to problems both in work environments and in daily life. I maintain good interpersonal relationships with my co-workers. ''',
              style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black87, fontSize: 14),
              softWrap: true,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'SERVICES',
                      style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 10),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Software Architect',
                      style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black87, fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Mobile Application Developer',
                      style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black87, fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Web Application Developer',
                      style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black87, fontSize: 12),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      'CONTACT',
                      style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 10),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'alcampos@gmail.com',
                      style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black87, fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '+5352054104',
                      style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black87, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: const VerticalDivider(
                      color: Colors.black26,
                      width: 0.7,
                      thickness: 0.5,
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'YEARS OF\n EXPERIENCE',
                      style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '5',
                      style: TextStyle(
                        fontFamily: 'NotoSerif',
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      'SATISFACTION CLIENT',
                      style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '100%',
                      style: TextStyle(
                        fontFamily: 'NotoSerif',
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'PROJECTS EXPERIENCE TIME LINE 5 YEARS',
              style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
            ),
            const TimeLinesWidget()
          ],
        ),
      ),

      // SizedBox(
      //   width: MediaQuery.of(context).size.width * 0.2,
      //   child: ListView(
      //     shrinkWrap: true,
      //     scrollDirection: Axis.vertical,
      //     children: const [
      //       Text(
      //         'YEARS OF\n EXPERIENCE',
      //         style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
      //       ),
      //       SizedBox(
      //         height: 5,
      //       ),
      //       Text(
      //         '5',
      //         style: TextStyle(
      //           fontFamily: 'NotoSerif',
      //           color: Colors.black87,
      //           fontSize: 18,
      //         ),
      //       ),
      //       SizedBox(
      //         height: 50,
      //       ),
      //       Text(
      //         'SATISFACTION CLIENT',
      //         style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
      //       ),
      //       SizedBox(
      //         height: 5,
      //       ),
      //       Text(
      //         '100%',
      //         style: TextStyle(
      //           fontFamily: 'NotoSerif',
      //           color: Colors.black87,
      //           fontSize: 18,
      //         ),
      //       ),
      //       SizedBox(
      //         height: 50,
      //       ),
      //       Text(
      //         'PROJECTS EXPERIENCE TIME LINE 5 YEARS',
      //         style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
      //       ),
      //       // TimeLinesWidget()
      //     ],
      //   ),
      // ),
    );
  }
}
