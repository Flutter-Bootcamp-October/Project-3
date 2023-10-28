

class AddOns {
  final String image;
  final String Name;
  final String subtitle;
  final String title;
  final String Price;

  AddOns({
    required this.title,
    required this.image,
    required this.Name,
    required this.subtitle,
    required this.Price,
  });

  factory AddOns.fromJson(Map json) {
    return AddOns(
      title: json['title'],
      Name: json['Name'],
      subtitle: json['subtitle'],
      image: json['image'],
      Price: json['Price'],
    );
  }
}
