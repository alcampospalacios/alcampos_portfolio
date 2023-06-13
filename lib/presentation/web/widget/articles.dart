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
    return SizedBox(
      height: (context.isTablet || context.isMobile)
          ? context.height * 0.3
          : context.height * 0.65,
      child: CustomScrollView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
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
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: (context.isTablet || context.isMobile)
                  ? context.height * 0.3
                  : context.height * 0.6,
              width: context.width,
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () => _launchUrl(
                            'https://medium.com/@alcampospalacios/flutter-supabase-google-oauth-paso-a-paso-7c9faf3a1d4c',
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: (context.isTablet || context.isMobile)
                                ? context.height * 0.2
                                : context.height * 0.5,
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
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/logos/article_01.png',
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: (context.isTablet || context.isMobile)
                                    ? context.height * 0.2
                                    : context.height * 0.5,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text('Flutter + Supabase + Google Oauth + Paso a Paso',
                            style: GoogleFonts.notoSerif(
                              textStyle: const TextStyle(
                                color: Colors.black45,
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
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
