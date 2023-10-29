class Starbucks {
  final String image;
  final String title;
  final String description;

  Starbucks({
    required this.image,
    required this.title,
    required this.description,
  });

  factory Starbucks.fromJson(Map json) {
    return Starbucks(
        image: json["image"],
        title: json["title"],
        description: json["description"]);
  }
}
