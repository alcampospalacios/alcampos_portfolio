import 'package:alcampos_portfolio/presentation/home/widget/about_me_widget.dart';
import 'package:alcampos_portfolio/presentation/home/widget/education_and_experience_widget.dart';
import 'package:alcampos_portfolio/presentation/home/widget/personal_summary_widget.dart';
import 'package:alcampos_portfolio/presentation/home/widget/tools_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/skills_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: MediaQuery.of(context).size.width * 0.4,
        leading: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.08),
              child: const Text(
                'Works',
                style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black87),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            const Text(
              'Contact',
              style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black87),
            ),
          ],
        ),
        title: Image.asset(
          'assets/logos/alcampos.png',
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.27,
        ),
        centerTitle: true,
        actions: [
          const Center(child: FaIcon(FontAwesomeIcons.github, size: 16, color: Colors.black)),
          const SizedBox(width: 15),
          const Center(child: FaIcon(FontAwesomeIcons.twitter, size: 16, color: Colors.black)),
          const SizedBox(width: 15),
          const Center(child: FaIcon(FontAwesomeIcons.facebookF, size: 16, color: Colors.black)),
          const SizedBox(width: 15),
          Padding(
            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.08),
            child: const Center(child: FaIcon(FontAwesomeIcons.instagram, size: 16, color: Colors.black)),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 18.0,
          left: MediaQuery.of(context).size.width * 0.08,
          right: MediaQuery.of(context).size.width * 0.08,
        ),
        child: ListView(
          children: const [
            Align(
              alignment: Alignment.center,
              child: AboutMeWidget(),
            ),
            PersonalSummaryWidget(),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: ToolSWidget(),
            ),
            SizedBox(height: 45),
            Divider(
              color: Colors.black38,
              thickness: 0.5,
            ),
            SizedBox(height: 45),
            SkillsWidget(),
            SizedBox(height: 45),
            Divider(
              color: Colors.black38,
              thickness: 0.5,
            ),
            EducationAndExperience(),
            SizedBox(height: 45),
            Divider(
              color: Colors.black38,
              thickness: 0.5,
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
