import 'package:flutter/material.dart';
import 'package:forex_indicators_th/utility/palette.dart';
import 'package:forex_indicators_th/main_page.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to my app'),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Palette.mainColor),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                );
              },
              child: const Text('เข้าสู่หน้าหลัก'),
            ),
          ],
        ),
      ),
    );
  }
}
