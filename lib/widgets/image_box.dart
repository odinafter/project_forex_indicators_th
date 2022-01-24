import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  const ImageBox({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image.asset(imagePath),
    );
  }
}
