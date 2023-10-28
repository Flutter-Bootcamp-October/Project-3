class Restaurant {
  final String image;
  final String name;
  final String catugry;
  final String distens;
  final String price;
  final String time;
  final List<List> menue;

  Restaurant({
    required this.image,
    required this.name,
    required this.catugry,
    required this.distens,
    required this.price,
    required this.time,
    required this.menue,
  });

  factory Restaurant.fromJson(Map json) {
    return Restaurant(
        image: json["image"],
        name: json["name"],
        catugry: json["catugry"],
        distens: json["distens"],
        price: json["price"],
        time: json["time"],
        menue: json["menue"]);
  }
}
