import 'package:flutter/material.dart';

class EducationAndExperience extends StatelessWidget {
  const EducationAndExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
      child: Column(
        children: [
          const Text('Education and Experience',
              style: TextStyle(
                fontFamily: 'NotoSerif',
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: const [
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
                      'University of Information Science (UCI)',
                      style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: const [
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
                      'University of Information Science (UCI)',
                      style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45, fontSize: 12),
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: const [
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
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
