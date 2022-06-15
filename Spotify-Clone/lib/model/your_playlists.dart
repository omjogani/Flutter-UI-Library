class Playlists {
  Playlists({
    required this.title,
    required this.imagePath,
    required this.publisherName,
  });
  final String title;
  final String imagePath;
  final String publisherName;
}

List<Playlists> yourPlaylist = <Playlists>[
  Playlists(title: "Sandeep Maheshwari", imagePath: 'assets/images/sandeep-maheshwari.jpg', publisherName: "Sandeep Maheshwari"),
  Playlists(title: "The Ranveer Show", imagePath: 'assets/images/the-ranveer-show.jpg', publisherName: "Ranveer Allahbadia"),
  Playlists(title: "Ankur Warikoo", imagePath: 'assets/images/ankur-warikoo.jpg', publisherName: "Ankur Warikoo"),
  Playlists(title: "Jay Sheety", imagePath: 'assets/images/jay-shetty.jpg', publisherName: "Jay Shetty"),
];