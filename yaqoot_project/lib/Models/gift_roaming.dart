

class GiftRoaming {
  final String image;
  final String Name;

  final String title;
  final String Price;

  GiftRoaming({
    required this.title,
    required this.image,
    required this.Name,
    required this.Price,
  });

  factory GiftRoaming.fromJson(Map json) {
    return GiftRoaming(
      title: json['title'],
      Name: json['Name'],
      image: json['image'],
      Price: json['Price'],
    );
  }
}
