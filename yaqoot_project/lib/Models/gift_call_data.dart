

class GiftCallData {
  final String image;
  final String Name;

  final String title;
  final String Price;

  GiftCallData({
    required this.title,
    required this.image,
    required this.Name,
    required this.Price,
  });

  factory GiftCallData.fromJson(Map json) {
    return GiftCallData(
      title: json['title'],
      Name: json['Name'],
      image: json['image'],
      Price: json['Price'],
    );
  }
}
