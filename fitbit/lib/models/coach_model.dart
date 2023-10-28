class Coach {
  String name;
  String imagePath;

  Coach({required this.name, required this.imagePath});

  factory Coach.fromJson(Map json) {
    return Coach(name: json["name"], imagePath: json["imagePath"]);
  }
}
