import 'package:alcampos_portfolio/presentation/home/screen/home_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
        title: 'alcamposportfolio',
        /*   home: const SignInPage(), */
        debugShowCheckedModeBanner: false,
        showPerformanceOverlay: false,
        initialRoute: '/home',
        routes: {
          '/home': (context) => const HomeScreen(),
        });
  }
}
