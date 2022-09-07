import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsWidgetMobile extends StatelessWidget {
  const SkillsWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('My Skills',
            style: GoogleFonts.notoSerif(
              textStyle: const TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
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
                      border: Border.all(
                          color: const Color(0xfff3f3f3), width: 0.5),
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
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Text('100%',
                              style: GoogleFonts.notoSerif(
                                textStyle: const TextStyle(
                                  color: Colors.black87,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: Text('Flutter',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black,
                          ),
                        )),
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
                      border: Border.all(
                          color: const Color(0xfff3f3f3), width: 0.5),
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
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Text('100%',
                              style: GoogleFonts.notoSerif(
                                textStyle: const TextStyle(
                                  color: Colors.black87,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: Text('Dart',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black,
                          ),
                        )),
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
                      border: Border.all(
                          color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/angular.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Text('95%',
                              style: GoogleFonts.notoSerif(
                                textStyle: const TextStyle(
                                  color: Colors.black87,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: Text('Angular',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black,
                          ),
                        )),
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
                      border: Border.all(
                          color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/ts.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Text('95%',
                              style: GoogleFonts.notoSerif(
                                textStyle: const TextStyle(
                                  color: Colors.black87,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: Text('Typescript',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black,
                          ),
                        )),
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
                      border: Border.all(
                          color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/js.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Text('95%',
                              style: GoogleFonts.notoSerif(
                                textStyle: const TextStyle(
                                  color: Colors.black87,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: Text('Javascript',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black,
                          ),
                        )),
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
                      border: Border.all(
                          color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/html.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Text('90%',
                              style: GoogleFonts.notoSerif(
                                textStyle: const TextStyle(
                                  color: Colors.black87,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: Text('Html',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black,
                          ),
                        )),
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
                      border: Border.all(
                          color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/css.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        FittedBox(
                          child: Text('80%',
                              style: GoogleFonts.notoSerif(
                                textStyle: const TextStyle(
                                  color: Colors.black87,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    child: Text('Css',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black,
                          ),
                        )),
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
                      border: Border.all(
                          color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/sass.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Text('78%',
                              style: GoogleFonts.notoSerif(
                                textStyle: const TextStyle(
                                  color: Colors.black87,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: Text('Sass',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black,
                          ),
                        )),
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
                      border: Border.all(
                          color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/ddd.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Text('95%',
                              style: GoogleFonts.notoSerif(
                                textStyle: const TextStyle(
                                  color: Colors.black87,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: Text('Domain Driven\nDesign Architecture',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black,
                          ),
                        )),
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
                      border: Border.all(
                          color: const Color(0xfff3f3f3), width: 0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logos/clean.png',
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.width * 0.1,
                        ),
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Text('85%',
                              style: GoogleFonts.notoSerif(
                                textStyle: const TextStyle(
                                  color: Colors.black87,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    child: Text('Clean Architecture',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black,
                          ),
                        )),
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
