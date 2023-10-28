

class Appdata {
  final String image;
  final String name;
  final String date;
  final String title;

  Appdata({
    required this.title,
    required this.image,
    required this.name,
    required this.date,
  });

  factory Appdata.fromJson(Map json) {
    return Appdata(
      title: json['title'],
      name: json['name'],
      date: json['date'],
      image: json['image'],
    );
  }
}
