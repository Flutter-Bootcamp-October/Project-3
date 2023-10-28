class Twitte {
  String userPhoto;
  String usrtName;
  String usrtTag;
  String time;
  String twitte;
  String image;
  int replay;
  int rettiwtes;
  int likes;
  int views;

  Twitte(
      {required this.userPhoto,
      required this.usrtName,
      required this.usrtTag,
      required this.time,
      required this.twitte,
      required this.image,
      required this.replay,
      required this.rettiwtes,
      required this.likes,
      required this.views});

  factory Twitte.fromJson(Map json) {
    return Twitte(
        userPhoto: json['user_photo'],
        usrtName: json['user_name'],
        usrtTag: json['user_tag'],
        time: json['time'],
        twitte: json['twitte'],
        image: json['image'],
        replay: json['replay'],
        rettiwtes: json['rettiwtes'],
        likes: json['likes'],
        views: json['views']);
  }
}
