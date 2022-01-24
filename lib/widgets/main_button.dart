import 'package:flutter/material.dart';
import 'package:forex_indicators_th/utility/palette.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subTitie,
    required this.onTap,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final String subTitie;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Palette.subColor,
        ),
        child: Center(
          child: ListTile(
            onTap: onTap,
            leading: Image.asset(
              imagePath,
            ),
            title: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              subTitie,
              style: const TextStyle(color: Colors.amber),
            ),
          ),
        ),
      ),
    );
  }
}
