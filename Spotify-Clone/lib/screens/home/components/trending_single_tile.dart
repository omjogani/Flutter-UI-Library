import 'package:flutter/material.dart';

class SingleTrendingTile extends StatelessWidget {
  const SingleTrendingTile({
    Key? key,
    required this.size,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  final Size size;
  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        width: size.width / 2.15,
        height: 60.0,
        decoration: const BoxDecoration(
          color: Colors.white24,
        ),
        alignment: Alignment.centerLeft,
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 60.0,
              width: 60.0,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 5.5),
            Flexible(
              child: Text(
                text,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


