import 'package:flutter/material.dart';

class DetailBox extends StatelessWidget {
  const DetailBox({
    Key? key,
    required this.detail,
  }) : super(key: key);

  final String detail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(detail),
    );
  }
}
