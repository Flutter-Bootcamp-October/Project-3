class Stores {
  final String name;
  final String city;
  final String image;
  final String location;

  Stores({
    required this.name,
    required this.city,
    required this.image,
    required this.location,
  });

  factory Stores.fromJson(Map json) {
    return Stores(
      name: json['name'],
      city: json['city'],
      image: json['image'],
      location: json['location'],
    );
  }
}
