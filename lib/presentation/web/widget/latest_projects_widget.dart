import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'card_project_widget.dart';

class LatestProjectWidget extends StatefulWidget {
  const LatestProjectWidget({Key? key}) : super(key: key);

  @override
  State<LatestProjectWidget> createState() => _LatestProjectWidgetState();
}

class _LatestProjectWidgetState extends State<LatestProjectWidget> {
  final controller = PageController(viewportFraction: 0.3, keepPage: true, initialPage: 1);

  final pages = [
    const CardProjectWidget(
      imageUrl: 'assets/images/pp2.jpeg',
      title: 'Picker&PackerTwo',
      url: 'Developing',
    ),
    const CardProjectWidget(
      imageUrl: 'assets/images/get_image_cache_network.gif',
      title: 'GetImageCacheNetwork',
      url: 'https://pub.dev/packages/get_image_cache_network',
    ),
    const CardProjectWidget(
      imageUrl: 'assets/images/tkc.jpeg',
      title: 'TKC App',
      url: 'https://play.google.com/store/apps/details?id=com.tkc.app.pro',
    ),
    const CardProjectWidget(
      imageUrl: 'assets/images/pp1.jpeg',
      title: 'Picker&Packer',
      url: 'https://play.google.com/store/apps/details?id=com.pickpack.app.pro',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('My Latest Projects',
            style: TextStyle(
              fontFamily: 'NotoSerif',
              color: Colors.black87,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(height: 20),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: PageView.builder(
            controller: controller,
            itemCount: pages.length,
            itemBuilder: (_, index) {
              return pages[index % pages.length];
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          child: SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: const JumpingDotEffect(
              dotHeight: 16,
              dotWidth: 16,
              jumpScale: .7,
              verticalOffset: 15,
              dotColor: Color(0xff484848),
              activeDotColor: Color(0xff333333),
            ),
          ),
        ),
      ],
    );
  }
}
