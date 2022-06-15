import 'package:flutter/material.dart';
import 'package:spotify/screens/home/components/trending_single_tile.dart';

class TrendingTiles extends StatelessWidget {
  const TrendingTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SingleTrendingTile(
              imagePath: 'assets/images/trending-india.jpg',
              text: "Trending India",
              size: size,
            ),
            SingleTrendingTile(
              imagePath: 'assets/images/jay-shetty.jpg',
              text: "Jay Shetty",
              size: size,
            ),
          ],
        ),
        const SizedBox(height: 7.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SingleTrendingTile(
              imagePath: 'assets/images/pushpa-song.jpg',
              text: "Pushpa (Hindi)",
              size: size,
            ),
            SingleTrendingTile(
              imagePath: 'assets/images/lofi.jpg',
              text: "Lofi Bollywood",
              size: size,
            ),
          ],
        ),
        const SizedBox(height: 7.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SingleTrendingTile(
              imagePath: 'assets/images/sandeep-maheshwari.jpg',
              text: "Sandeep Maheshwari",
              size: size,
            ),
            SingleTrendingTile(
              imagePath: 'assets/images/excuses.jpg',
              text: "Excuses",
              size: size,
            ),
          ],
        ),
      ],
    );
  }
}
