import 'mobile/screen/home_screen_mobile.dart';
import 'web/screen/home_screen.dart';

import 'package:flutter/material.dart';

import 'core/extensions.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Alejandro Campos Palacios',
        /*   home: const SignInPage(), */
        debugShowCheckedModeBanner: false,
        showPerformanceOverlay: false,
        initialRoute: '/home',
        routes: {
          '/home': (context) =>
              context.isMobile ? const HomeScreenMobile() : const HomeScreen(),
        });
  }
}

// This comment is to test workflow