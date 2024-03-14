import 'presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';

void main() {
  if (kIsWeb) {
    MetaSEO().config();
  }

  runApp(const App());
}

