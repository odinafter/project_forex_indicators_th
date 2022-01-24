import 'package:flutter/material.dart';
import 'package:forex_indicators_th/my_first_page.dart';
import 'package:forex_indicators_th/utility/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Kanit',
        textTheme: const TextTheme(
          headline5: TextStyle(
              color: Palette.mainColor,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        primarySwatch: Palette.mainColor,
      ),
      home: const MyFirstPage(),
    );
  }
}
