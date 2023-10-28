

class Unlimiteddata {
  final String title;
  final String bottun1;
  final String bottun2;

  Unlimiteddata({
    required this.title,
    required this.bottun1,
    required this.bottun2,
  });

  factory Unlimiteddata.fromJson(Map json) {
    return Unlimiteddata(
      title: json['title'],
      bottun1: json['bottun1'],
      bottun2: json['bottun2'],
    );
  }
}
