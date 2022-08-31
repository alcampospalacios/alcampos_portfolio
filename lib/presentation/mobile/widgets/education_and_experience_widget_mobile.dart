import 'package:flutter/material.dart';

class EducationAndExperienceWidgetMobile extends StatelessWidget {
  const EducationAndExperienceWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('Education and Experience',
            style: TextStyle(
              fontFamily: 'NotoSerif',
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(height: 10),
        Text(
          '2011-2017',
          style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Software Engineer',
          style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black87, fontSize: 14),
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
        Text(
          'University of Informatic Sciences (UCI)',
          style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 25),
        Text(
          '2017-2020',
          style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Developer of NOVA desktop',
          style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black87, fontSize: 14),
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
        Text(
          'Center of free solutions (CESOL)',
          style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Teaching postgraduate courses about PROXY',
          style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black87, fontSize: 14),
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
        Text(
          'Center of free solutions (CESOL)',
          style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
        Text(
          'University of Informatic Sciences (UCI)',
          style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 25),
        Text(
          '2021-Current',
          style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Fronted developer of AKADEMOS',
          style: TextStyle(
            fontFamily: 'NotoSerif',
            color: Colors.black87,
            fontSize: 18,
          ),
        ),
        Text(
          'Center of Technologies for Training (FORTES)',
          style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Freelancer',
          style: TextStyle(
            fontFamily: 'NotoSerif',
            color: Colors.black87,
            fontSize: 18,
          ),
        ),
        Text(
          'By my own',
          style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
        ),
      ],
    );
  }
}
