class Movie {
  final String image;
  final String name;

  Movie({
    required this.image,
    required this.name,
  });
  factory Movie.fromJson(Map json) {
    return Movie(image: json['image'], name: json['name']);
  }
}
