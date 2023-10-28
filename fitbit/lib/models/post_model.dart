class Post {
  String title;
  String type;
  num time;
  String icon;
  String imagePath;

  Post(
      {required this.title,
      required this.type,
      required this.time,
      required this.icon,
      required this.imagePath});

  factory Post.fromJson(Map json) {
    return Post(
        title: json["title"],
        icon: json["icon"],
        type: json["type"],
        imagePath: json["imagePath"],
        time: json["time"]);
  }
}
