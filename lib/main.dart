import 'package:flutter/material.dart';
import 'package:mop_green/pages/pages.dart';
import 'package:mop_green/shared/shared.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colorpalette.purpleColor,
          primaryColor: primaryColor,
          canvasColor: Colors.transparent),
      home: selamatdatang(),
    );
  }
}
