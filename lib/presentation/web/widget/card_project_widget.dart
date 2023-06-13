import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class CardProjectWidget extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String url;
  const CardProjectWidget(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.url})
      : super(key: key);

  @override
  State<CardProjectWidget> createState() => _CardProjectWidgetState();
}

void _launchUrl(String url) async {
  final Uri uri = Uri.parse(url);

  if (!await launchUrl(uri)) {
    throw Exception('Could not launch $url');
  }
}

class _CardProjectWidgetState extends State<CardProjectWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => _launchUrl(
            widget.url,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 3,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Image.asset(
                widget.imageUrl,
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.4,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(widget.title,
            style: GoogleFonts.notoSerif(
              textStyle: const TextStyle(
                color: Colors.black45,
                fontSize: 16,
              ),
            )),
      ],
    );
  }
}
