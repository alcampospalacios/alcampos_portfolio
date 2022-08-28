import 'package:alcampos_portfolio/presentation/mobile/screen/home_screen_mobile.dart';

import 'package:flutter/material.dart';

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
          '/home': (context) => const HomeScreenMobile(),
        });
  }
}
