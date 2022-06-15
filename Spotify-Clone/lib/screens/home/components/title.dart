import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    Key? key,
    required this.titleText,
  }) : super(key: key);
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text(
          titleText,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}