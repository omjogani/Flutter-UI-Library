import 'package:flutter/material.dart';
import 'package:spotify/screens/home/components/nav_bar.dart';
import 'package:spotify/screens/home/components/title.dart';
import 'package:spotify/screens/home/components/trending_tiles.dart';
import 'package:spotify/screens/home/components/your_show.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSongPlaying = true;
  String index  = "s";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF121212),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: -150,
            top: -180,
            child: Container(
              height: 400.0,
              width: 400.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: <Color>[
                    // Colors.green,
                    Colors.green.withOpacity(0.5),
                    Colors.green.withOpacity(0.2),
                    Colors.green.withOpacity(0.01),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: const <Widget>[
                        SizedBox(height: 15.0),
                        Navbar(),
                        TrendingTiles(),
                        CustomTitle(titleText: "Your shows"),
                        YourShow(),
                        CustomTitle(titleText: "Your playlists"),
                        YourShow(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                const Spacer(),
                isSongPlaying
                    ? Dismissible(
                      key: Key(index),
                      onDismissed: (avlue){
                        setState(() {
                          isSongPlaying = false;
                        });
                      },
                      child: Container(
                          padding: EdgeInsets.all(8.0),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Color(0xFF573430),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: SizedBox(
                                      height: 40.0,
                                      width: 40.0,
                                      child: Image.asset(
                                        'assets/images/pushpa.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                
                              const SizedBox(width: 10.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Shivali Pushpa Hindi",
                                    maxLines: 2,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.play_circle_outline_rounded,
                                        size: 13.0,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        " OM JOGANI",
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white.withOpacity(0.7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              ],
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    onPressed: (){},
                                    icon:Icon(Icons.speaker),
                                    iconSize: 25.0,
                                    color: Colors.white,
                                  ),
                                  IconButton(
                                    onPressed: (){},
                                    icon:Icon(Icons.favorite),
                                    iconSize: 25.0,
                                    color: Colors.white,
                                  ),
                                  IconButton(
                                    onPressed: (){},
                                    icon:Icon(Icons.pause),
                                    iconSize: 25.0,
                                    color: Colors.white,
                                  ),
                                  
                                ],
                              ),
                            ],
                          ),
                        ),
                    )
                    : Container(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: <Color>[
                        Colors.black,
                        Colors.black.withOpacity(0.7),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSongPlaying = true;
                            });
                          },
                          child: Column(
                            children: const <Widget>[
                              Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              SizedBox(height: 2.0),
                              Text(
                                "Home",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: const <Widget>[
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(height: 2.0),
                              Text(
                                "Search",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: const <Widget>[
                              Icon(
                                Icons.video_library_rounded,
                                color: Colors.white,
                              ),
                              SizedBox(height: 2.0),
                              Text(
                                "Your Library",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: const <Widget>[
                              Icon(
                                Icons.workspace_premium,
                                color: Colors.white,
                              ),
                              SizedBox(height: 2.0),
                              Text(
                                "Premium",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class YourPlaylist extends StatelessWidget {
  const YourPlaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[],
    );
  }
}
