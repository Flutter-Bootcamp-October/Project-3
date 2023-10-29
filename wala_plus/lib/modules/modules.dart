class Store {
  final String image;
  final String coverImage;
  final String name;
  final String location;
  final String type;
  final String discount;

  Store(
      {required this.image,
      required this.coverImage,
      required this.name,
      required this.location,
      required this.type,
      required this.discount});

  factory Store.fromJson(Map Json) {
    return Store(
      image: Json["image"],
      coverImage: Json["coverImage"],
      name: Json["name"],
      location: Json["location"],
      type: Json["type"],
      discount: Json["discount"],
    );
  }
}
