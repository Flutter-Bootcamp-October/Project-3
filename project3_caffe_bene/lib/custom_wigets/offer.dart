class Offer {
  final String title;
  final String name;
  final String price;
  final String image;

  Offer({
    required this.title,
    required this.name,
    required this.price,
    required this.image,
  });

  factory Offer.fromJson(Map json) {
    return Offer(
      title: json['title'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
    );
  }
}
