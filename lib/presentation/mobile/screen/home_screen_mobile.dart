import 'package:google_fonts/google_fonts.dart';

import '../../core/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

import '../../web/widget/articles.dart';
import '../widgets/about_me_widget_mobile.dart';
import '../widgets/education_and_experience_widget_mobile.dart';
import '../widgets/latest_projects_widget_mobile.dart';
import '../widgets/personal_summary_widget_mobile.dart';
import '../widgets/skills_widget_mobile.dart';
import '../widgets/tools_widget_mobile.dart';

class HomeScreenMobile extends StatefulWidget {
  const HomeScreenMobile({Key? key}) : super(key: key);

  @override
  State<HomeScreenMobile> createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  final _scrollController = ScrollController();

  // show image on dialog
  void showImage(BuildContext context, String image) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.42,
          child: Dialog(
            child: Image.asset(
              image,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          leadingWidth: MediaQuery.of(context).size.width * 0.4,
          title: InkWell(
            onTap: () {
              showImage(context, 'assets/logos/alcampos.png');
            },
            child: Image.asset(
              'assets/logos/alcampos.png',
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.27,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    showImage(context, 'assets/images/alcampos.jpg');
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.transparent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        'assets/images/alcampos.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        drawer: MenuWidgetMobile(
          scrollController: _scrollController,
        ),
        body: Padding(
          padding: EdgeInsets.only(
            top: 18.0,
            left: MediaQuery.of(context).size.width * 0.08,
            right: MediaQuery.of(context).size.width * 0.08,
          ),
          child: ListView(
            controller: _scrollController,
            children: [
              const Align(
                alignment: Alignment.center,
                child: AboutMeWidgetMobile(),
              ),
              const PersonalSummaryWidgetMobile(),
              const ToolSWidgetMobile(),
              const SizedBox(height: 45),
              const Divider(color: Colors.black26, thickness: 0.5),
              const SizedBox(height: 25),
              const SkillsWidgetMobile(),
              const Divider(color: Colors.black26, thickness: 0.5),
              const SizedBox(height: 25),
              const EducationAndExperienceWidgetMobile(),
              const SizedBox(height: 25),
              const Divider(color: Colors.black26, thickness: 0.5),
              const SizedBox(height: 25),
              const LatestProjectWidgetMobile(),
              const SizedBox(height: 45),
              const Divider(color: Colors.black26, thickness: 0.5),
              const Articles(),
              const SizedBox(height: 45),
              const Divider(color: Colors.black26, thickness: 0.5),
              const SizedBox(height: 45),
              Text(
                  'Made with flutter by @alcampospalacios, design by Alejandro Campos',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(color: Colors.black45),
                  )),
              const SizedBox(height: 25),
            ],
          ),
        ));
  }
}
