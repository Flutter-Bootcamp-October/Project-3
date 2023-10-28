class Series {
  final String image;
  final String name;
  Series({
    required this.image,
    required this.name,
  });
  factory Series.fromJson(Map json) {
    return Series(image: json['image'], name: json['name']);
  }
}
