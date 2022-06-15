class Shows {
  Shows({
    required this.title,
    required this.imagePath,
    required this.autherName,
  });
  final String title;
  final String imagePath;
  final String autherName;
}

List<Shows> yourShows = <Shows>[
  Shows(title: "Sandeep Maheshwari", imagePath: 'assets/images/sandeep-maheshwari.jpg', autherName: "Sandeep Maheshwari"),
  Shows(title: "The Ranveer Show", imagePath: 'assets/images/the-ranveer-show.jpg', autherName: "Ranveer Allahbadia"),
  Shows(title: "Ankur Warikoo", imagePath: 'assets/images/ankur-warikoo.jpg', autherName: "Ankur Warikoo"),
  Shows(title: "Jay Shetty", imagePath: 'assets/images/jay-shetty.jpg', autherName: "Jay Shetty"),
];