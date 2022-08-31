import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'dart:html' as html;

class MenuWidgetMobile extends StatefulWidget {
  final ScrollController scrollController;
  const MenuWidgetMobile({Key? key, required this.scrollController}) : super(key: key);

  @override
  State<MenuWidgetMobile> createState() => _MenuWidgetMobileState();
}

class _MenuWidgetMobileState extends State<MenuWidgetMobile> {
  // Define the function that scroll to an item
  void _scrollToIndex() {
    widget.scrollController.animateTo(1400, duration: const Duration(milliseconds: 800), curve: Curves.easeIn);
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
                label: const Text(
                  'Latest Projects',
                  style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 16),
                )),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onPressed: () => html.window.open('https://github.com/alcampospalacios', "_blank"),
                icon: const FaIcon(
                  FontAwesomeIcons.github,
                  color: Colors.black45,
                  size: 14,
                ),
                label: const Text(
                  'Follow me Github',
                  style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 16),
                )),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onPressed: () => html.window.open('https://twitter.com/4l3j4ndr09212', "_blank"),
                icon: const FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.black45,
                  size: 14,
                ),
                label: const Text(
                  'Follow me Twitter',
                  style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 16),
                )),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onPressed: () => html.window.open('https://www.linkedin.com/in/alcampospalacios', "_blank"),
                icon: const FaIcon(
                  FontAwesomeIcons.linkedinIn,
                  color: Colors.black45,
                  size: 14,
                ),
                label: const Text(
                  'Follow me Linkedin',
                  style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 16),
                )),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onPressed: () => html.window.open('https://stackoverflow.com/users/12355947/alejandro-campos-palacios', "_blank"),
                icon: const FaIcon(
                  FontAwesomeIcons.stackOverflow,
                  color: Colors.black45,
                  size: 14,
                ),
                label: const Text(
                  'Follow me Stackoverflow',
                  style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 16),
                )),
          ),
        ]),
      ),
    );
  }
}
