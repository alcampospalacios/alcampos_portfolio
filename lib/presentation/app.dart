import 'mobile/screen/home_screen_mobile.dart';
import 'web/screen/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'alcamposportfolio',
        /*   home: const SignInPage(), */
        debugShowCheckedModeBanner: false,
        showPerformanceOverlay: false,
        initialRoute: '/home',
        routes: {
          '/home': (context) => ScreenTypeLayout(
                mobile: const HomeScreenMobile(),
                desktop: const HomeScreen(),
              )
        });
  }
}
