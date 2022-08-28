import 'package:flutter/material.dart';

class MenuWidgetMobile extends StatelessWidget {
  const MenuWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        Image.asset(
          'assets/logos/alcampos.png',
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.3,
        )
      ]),
    );
  }
}
