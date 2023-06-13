import 'package:flutter/material.dart';

class ToolSWidgetMobile extends StatelessWidget {
  const ToolSWidgetMobile({Key? key}) : super(key: key);

  // show image on dialog to show the logo
  void showImage(BuildContext context, String image) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Image.asset(
              image,
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          InkWell(
            onTap: () {
              showImage(context, 'assets/logos/github.png');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset(
                'assets/logos/github.png',
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showImage(context, 'assets/logos/git.png');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset(
                'assets/logos/git.png',
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showImage(context, 'assets/logos/gitlab.png');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset(
                'assets/logos/gitlab.png',
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showImage(context, 'assets/logos/github_actions.png');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset(
                'assets/logos/github_actions.png',
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showImage(context, 'assets/logos/google_play.png');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset(
                'assets/logos/google_play.png',
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showImage(context, 'assets/logos/supabase.png');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset(
                'assets/logos/supabase.png',
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showImage(context, 'assets/logos/firebase_crashlytics.png');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset(
                'assets/logos/firebase_crashlytics.png',
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showImage(context, 'assets/logos/firebase_analytics.png');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset(
                'assets/logos/firebase_analytics.png',
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showImage(context, 'assets/logos/firebase_cloud_messaging.png');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset(
                'assets/logos/firebase_cloud_messaging.png',
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
