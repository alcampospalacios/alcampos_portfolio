import 'package:alcampos_portfolio/presentation/home/widget/about_me_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        title: Column(
          children: const [
            Icon(Icons.abc, color: Colors.black87),
            FittedBox(
              fit: BoxFit.cover,
              child: Text('ALEJANDRO \n CAMPOS',
                  style: TextStyle(
                    fontFamily: 'NotoSerif',
                    color: Colors.black87,
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
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
        padding: const EdgeInsets.only(top: 18.0),
        child: Column(
          children: const [
            Align(
              alignment: Alignment.center,
              child: AboutMeWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
