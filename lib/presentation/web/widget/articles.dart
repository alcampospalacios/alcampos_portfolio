import 'package:alcampos_portfolio/presentation/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Articles extends StatefulWidget {
  const Articles({
    Key? key,
  }) : super(key: key);

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  void _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Articles',
            style: GoogleFonts.notoSerif(
              textStyle: const TextStyle(
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: InkWell(
            onTap: () => _launchUrl(
              'https://medium.com/@alcampospalacios/flutter-supabase-google-oauth-paso-a-paso-7c9faf3a1d4c',
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/logos/article_01.png',
                // fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: Text('Flutter + Supabase + Google Oauth + Paso a Paso',
              style: GoogleFonts.notoSerif(
                textStyle: const TextStyle(
                  color: Colors.black45,
                ),
              )),
        ),
      ],
    );
  }
}

class ArticlesCard extends StatelessWidget {
  const ArticlesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
