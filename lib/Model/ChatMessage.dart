class Product {
  final String senderName;
  final String messageContent;
  final DateTime timestamp;
  final String imageAssetPath;

  Product({
    required this.senderName,
    required this.messageContent,
    required this.timestamp,
    required this.imageAssetPath,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      senderName: json['senderName'],
      messageContent: json['messageContent'],
      timestamp: DateTime.parse(json['timestamp']),
      imageAssetPath: json['imageAssetPath'],
    );
  }
}
