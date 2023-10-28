class Meter {
  String label;
  String icon;
  num percent;
  num total;
  bool isMain;

  Meter(
      {required this.label,
      required this.icon,
      required this.percent,
      required this.isMain,
      required this.total});

  factory Meter.fromJson(Map json) {
    return Meter(
        label: json["label"],
        icon: json["icon"],
        percent: json["percent"],
        isMain: json["isMain"],
        total: json["total"]);
  }
}
