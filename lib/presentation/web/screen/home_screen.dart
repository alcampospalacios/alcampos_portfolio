import 'package:alcampos_portfolio/presentation/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widget/about_me_widget.dart';
import '../widget/articles.dart';
import '../widget/education_and_experience_widget.dart';
import '../widget/latest_projects_widget.dart';
import '../widget/personal_summary_widget.dart';
import '../widget/skills_widget.dart';
import '../widget/tools_widget.dart';

import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scrollController = ScrollController();

  // Define the function that scroll to an item
  void _scrollToIndex(String workOrContact) {
    workOrContact == 'contact'
        ? _scrollController.animateTo(200, duration: const Duration(milliseconds: 800), curve: Curves.easeIn)
        : _scrollController.animateTo(1400, duration: const Duration(milliseconds: 800), curve: Curves.easeIn);
  }

  void _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    // Add MetaSEO just into Web platform condition
    if (kIsWeb) {
      // Define MetaSEO object
      MetaSEO meta = MetaSEO();
      // add meta seo data for web app as you want
      meta.author(author: 'Alejandro Campos Palacios');
      meta.description(description: 'A web site that shows my personal portfolio');
      meta.keywords(
          keywords: 'Flutter, Dart, Alejandro, Campos, Palacios, alcampospalacios, alcampospalacios92@gmail.com');
    }

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: MediaQuery.of(context).size.width * 0.4,
        leading: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.08),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _scrollToIndex('work');
                  });
                },
                child: Text('Works',
                    style: GoogleFonts.notoSerif(
                      textStyle: const TextStyle(
                        color: Colors.black87,
                      ),
                    )),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _scrollToIndex('contact');
                });
              },
              child: Text('Contact',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                    ),
                  )),
            ),
          ],
        ),
        title: Image.asset(
          'assets/logos/alcampos.png',
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height * 0.27,
        ),
        centerTitle: true,
        actions: [
          Center(
              child: IconButton(
                  onPressed: () => _launchUrl('https://github.com/alcampospalacios'),
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                    size: 16,
                    color: Colors.black,
                  ))),
          Center(
              child: IconButton(
                  onPressed: () => _launchUrl(
                        'https://twitter.com/4l3j4ndr09212',
                      ),
                  icon: const FaIcon(
                    FontAwesomeIcons.twitter,
                    size: 16,
                    color: Colors.black,
                  ))),
          Center(
              child: IconButton(
                  onPressed: () => _launchUrl(
                        'https://www.linkedin.com/in/alcampospalacios',
                      ),
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedinIn,
                    size: 16,
                    color: Colors.black,
                  ))),
          Center(
              child: IconButton(
                  onPressed: () => _launchUrl(
                        'https://stackoverflow.com/users/12355947/alejandro-campos-palacios',
                      ),
                  icon: const FaIcon(
                    FontAwesomeIcons.stackOverflow,
                    size: 16,
                    color: Colors.black,
                  ))),
          Padding(
            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.08),
            child: Center(
                child: IconButton(
                    onPressed: () => _launchUrl(
                          'https://drive.google.com/file/d/1Cbbjs1TnTThE301GbAK0PILdN5aJhzCC/view?usp=share_link',
                        ),
                    icon: const FaIcon(
                      FontAwesomeIcons.fileArrowDown,
                      size: 16,
                      color: Colors.black,
                    ))),
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
          controller: _scrollController,
          children: [
            const Align(
              alignment: Alignment.center,
              child: AboutMeWidget(),
            ),
            const PersonalSummaryWidget(),
            const ToolSWidget(),
            const SizedBox(height: 45),
            const Divider(color: Colors.black26, thickness: 0.5),
            const SizedBox(height: 45),
            const SkillsWidget(),
            const SizedBox(height: 45),
            const Divider(color: Colors.black26, thickness: 0.5),
            const EducationAndExperience(),
            const SizedBox(height: 45),
            const Divider(color: Colors.black26, thickness: 0.5),
            const SizedBox(height: 45),
            const LatestProjectWidget(),
            const SizedBox(height: 45),
            const Divider(color: Colors.black26, thickness: 0.5),
            SizedBox(height: context.height * 0.4, child: const Articles()),
            const SizedBox(height: 45),
            const Divider(color: Colors.black26, thickness: 0.5),
            const SizedBox(height: 45),
            Row(
              children: [
                Text('Made with flutter by @alcampospalacios, design by',
                    style: GoogleFonts.notoSerif(
                      textStyle: const TextStyle(
                        color: Colors.black45,
                      ),
                    )),
                TextButton(
                  onPressed: () => _launchUrl(
                    'https://dribbble.com/shots/16077352-Personal-Portfolio-Site-Bruno-Erdison',
                  ),
                  child: Text('Logan Cee',
                      style: GoogleFonts.notoSerif(
                        textStyle: TextStyle(
                          color: Colors.red[300],
                        ),
                      )),
                )
              ],
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
