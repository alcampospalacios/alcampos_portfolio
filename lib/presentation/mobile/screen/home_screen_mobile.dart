import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/about_me_widget_mobile.dart';
import '../widgets/personal_summary_widget_mobile.dart';
import '../widgets/tools_widget_mobile.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leadingWidth: MediaQuery.of(context).size.width * 0.4,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: Image.asset(
            'assets/logos/alcampos.png',
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.27,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Center(
                child: CircleAvatar(
                  radius: 20,
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
                child: AboutMeWidgetMobile(),
              ),
              PersonalSummaryWidgetMobile(),
              ToolSWidgetMobile(),
            ],
          ),
        ));
  }
}
