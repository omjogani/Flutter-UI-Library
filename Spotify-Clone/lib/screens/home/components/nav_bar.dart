import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text(
          "Good Morning",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: const Icon(Icons.notifications_sharp),
            ),
            IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: const Icon(Icons.access_time_outlined),
            ),
            IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: const Icon(Icons.settings),
            ),
          ],
        )
      ],
    );
  }
}