import 'package:flutter/material.dart';
import 'package:framy_annotation/framy_annotation.dart';

import 'theme/theme.dart';
import 'views/main.dart';

void main() {
  runApp(MyApp());
}

@FramyApp()
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: buildThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
