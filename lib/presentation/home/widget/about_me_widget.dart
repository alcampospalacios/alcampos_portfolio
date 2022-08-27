import 'package:flutter/material.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Software Engineer, Flutter developer',
          style: TextStyle(
            fontFamily: 'NotoSerif',
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Based on Cuba',
          style: TextStyle(
            fontFamily: 'NotoSerif',
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
