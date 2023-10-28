class Educational {
  final String title;
  final String introduction;
  final String topic1;
  final String content1;
  final String topic2;
  final String content2;

  Educational(
      {required this.title,
      required this.topic1,
      required this.introduction,
      required this.content1,
      required this.content2,
      required this.topic2});

  factory Educational.fromJson(Map json) {
    return Educational(
      content1: json["content1"],
      title: json["title"],
      content2: json["content2"],
      introduction: json["introduction"],
      topic1: json["topic1"],
      topic2: json["topic2"],
    );
  }
}
