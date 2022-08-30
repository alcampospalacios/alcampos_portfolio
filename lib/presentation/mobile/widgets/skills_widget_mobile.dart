import 'package:flutter/material.dart';

class SkillsWidgetMobile extends StatelessWidget {
  const SkillsWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('My Skills',
            style: TextStyle(
              fontFamily: 'NotoSerif',
              color: Colors.black87,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(height: 20),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.1,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/logos/flutter.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        const FittedBox(
                          fit: BoxFit.cover,
                          child: Text('100%',
                              style: TextStyle(
                                fontFamily: 'NotoSerif',
                                color: Colors.black87,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      'Flutter',
                      style: TextStyle(
                        fontFamily: 'NotoSerif',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 25),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.1,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/logos/dart.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        const FittedBox(
                          fit: BoxFit.cover,
                          child: Text('100%',
                              style: TextStyle(
                                fontFamily: 'NotoSerif',
                                color: Colors.black87,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      'Dart',
                      style: TextStyle(
                        fontFamily: 'NotoSerif',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 25),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.1,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/angular.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        const FittedBox(
                          fit: BoxFit.cover,
                          child: Text('95%',
                              style: TextStyle(
                                fontFamily: 'NotoSerif',
                                color: Colors.black87,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      'Angular',
                      style: TextStyle(
                        fontFamily: 'NotoSerif',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 25),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.1,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/ts.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        const FittedBox(
                          fit: BoxFit.cover,
                          child: Text('95%',
                              style: TextStyle(
                                fontFamily: 'NotoSerif',
                                color: Colors.black87,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      'Typescript',
                      style: TextStyle(
                        fontFamily: 'NotoSerif',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 25),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.1,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/js.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        const FittedBox(
                          fit: BoxFit.cover,
                          child: Text('95%',
                              style: TextStyle(
                                fontFamily: 'NotoSerif',
                                color: Colors.black87,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      'Javascript',
                      style: TextStyle(
                        fontFamily: 'NotoSerif',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 25),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.1,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/html.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        const FittedBox(
                          fit: BoxFit.cover,
                          child: Text('90%',
                              style: TextStyle(
                                fontFamily: 'NotoSerif',
                                color: Colors.black87,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      'Html',
                      style: TextStyle(
                        fontFamily: 'NotoSerif',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 25),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.1,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/css.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        const FittedBox(
                          child: Text('80%',
                              style: TextStyle(
                                fontFamily: 'NotoSerif',
                                color: Colors.black87,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const FittedBox(
                    child: Text(
                      'Css',
                      style: TextStyle(
                        fontFamily: 'NotoSerif',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 25),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.1,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/sass.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        const FittedBox(
                          fit: BoxFit.cover,
                          child: Text('78%',
                              style: TextStyle(
                                fontFamily: 'NotoSerif',
                                color: Colors.black87,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      'Sass',
                      style: TextStyle(
                        fontFamily: 'NotoSerif',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 25),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.1,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/ddd.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        const FittedBox(
                          fit: BoxFit.cover,
                          child: Text('95%',
                              style: TextStyle(
                                fontFamily: 'NotoSerif',
                                color: Colors.black87,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      'Domain Driven\nDesign Architecture',
                      style: TextStyle(
                        fontFamily: 'NotoSerif',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 25),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.height * 0.1,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/clean.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        const FittedBox(
                          fit: BoxFit.cover,
                          child: Text('85%',
                              style: TextStyle(
                                fontFamily: 'NotoSerif',
                                color: Colors.black87,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const FittedBox(
                    child: Text(
                      'Clean Architecture',
                      style: TextStyle(
                        fontFamily: 'NotoSerif',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
