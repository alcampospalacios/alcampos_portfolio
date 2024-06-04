import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuWidgetMobile extends StatefulWidget {
  final ScrollController scrollController;
  const MenuWidgetMobile({Key? key, required this.scrollController})
      : super(key: key);

  @override
  State<MenuWidgetMobile> createState() => _MenuWidgetMobileState();
}

class _MenuWidgetMobileState extends State<MenuWidgetMobile> {
  // Define the function that scroll to an item
  void _scrollToIndex() {
    widget.scrollController.animateTo(1400,
        duration: const Duration(milliseconds: 800), curve: Curves.easeIn);
  }

  void _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: ListView(children: [
          Image.asset(
            'assets/logos/alcampos.png',
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onPressed: () {
                  setState(() {
                    _scrollToIndex();
                  });
                },
                icon: const FaIcon(
                  FontAwesomeIcons.briefcase,
                  color: Colors.black45,
                  size: 14,
                ),
                label: Text(
                  'Latest Projects',
                  style: GoogleFonts.notoSerif(
                    textStyle:
                        const TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                )),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onPressed: () => _launchUrl(
                      'https://github.com/alcampospalacios',
                    ),
                icon: const FaIcon(
                  FontAwesomeIcons.github,
                  color: Colors.black45,
                  size: 14,
                ),
                label: Text(
                  'Follow me Github',
                  style: GoogleFonts.notoSerif(
                    textStyle:
                        const TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                )),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onPressed: () => _launchUrl(
                      'https://twitter.com/4l3j4ndr09212',
                    ),
                icon: const FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.black45,
                  size: 14,
                ),
                label: Text(
                  'Follow me Twitter',
                  style: GoogleFonts.notoSerif(
                    textStyle:
                        const TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                )),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onPressed: () => _launchUrl(
                      'https://www.linkedin.com/in/alcampospalacios',
                    ),
                icon: const FaIcon(
                  FontAwesomeIcons.linkedinIn,
                  color: Colors.black45,
                  size: 14,
                ),
                label: Text(
                  'Follow me Linkedin',
                  style: GoogleFonts.notoSerif(
                    textStyle:
                        const TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                )),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onPressed: () => _launchUrl(
                      'https://stackoverflow.com/users/12355947/alejandro-campos-palacios',
                    ),
                icon: const FaIcon(
                  FontAwesomeIcons.stackOverflow,
                  color: Colors.black45,
                  size: 14,
                ),
                label: Text(
                  'Follow me Stackoverflow',
                  style: GoogleFonts.notoSerif(
                    textStyle:
                        const TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                )),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onPressed: () => _launchUrl(
                      'https://drive.google.com/file/d/1Cbbjs1TnTThE301GbAK0PILdN5aJhzCC/view?usp=share_link',
                    ),
                icon: const FaIcon(
                  FontAwesomeIcons.fileArrowDown,
                  color: Colors.black45,
                  size: 14,
                ),
                label: Text(
                  'Download CV.',
                  style: GoogleFonts.notoSerif(
                    textStyle:
                        const TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
