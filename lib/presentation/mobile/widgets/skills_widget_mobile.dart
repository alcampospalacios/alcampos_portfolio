import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'skill_widget.dart';

class SkillsWidgetMobile extends StatelessWidget {
  const SkillsWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('My Skills',
            style: GoogleFonts.notoSerif(
              textStyle: const TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.bold),
            )),
        const SizedBox(height: 20),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: const [
              SkillWidget(title: 'Flutter', image: 'assets/logos/flutter.png', percentage: '100%'),
              SizedBox(width: 25),
              SkillWidget(title: 'Dart', image: 'assets/logos/dart.png', percentage: '100%'),
              SizedBox(width: 25),
              SkillWidget(title: 'S.O.L.I.D\nPrinciples', image: 'assets/logos/solid.png', percentage: '98%'),
              SizedBox(width: 25),
              SkillWidget(
                  title: 'Domain Driven\nDesign Architecture', image: 'assets/logos/ddd.png', percentage: '95%'),
              SizedBox(width: 25),
              SkillWidget(title: 'Clean Architecture', image: 'assets/logos/clean.png', percentage: '95%'),
              SizedBox(width: 25),
              SkillWidget(title: 'Angular', image: 'assets/logos/angular.png', percentage: '80%'),
              SizedBox(width: 25),
              SkillWidget(title: 'Typescript', image: 'assets/logos/ts.png', percentage: '80%'),
              SizedBox(width: 25),
              SkillWidget(title: 'Javascript', image: 'assets/logos/js.png', percentage: '80%'),
              SizedBox(width: 25),
              SkillWidget(title: 'Html', image: 'assets/logos/html.png', percentage: '80%'),
              SizedBox(width: 25),
              SkillWidget(title: 'Css', image: 'assets/logos/css.png', percentage: '80%'),
            ],
          ),
        ),
      ],
    );
  }
}
