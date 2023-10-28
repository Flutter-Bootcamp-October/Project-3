

class Productdevice {
  final String id;
  final String image;
  final String deviceName;
  final String prand;
  final double? price;
  final String description;
  final String status;
  final bool isoffer;
  Productdevice(
      {required this.prand,
      required this.isoffer,
      required this.status,
      required this.id,
      required this.image,
      required this.deviceName,
      required this.price,
      required this.description});

  factory Productdevice.fromJson(Map json) {
    return Productdevice(
        id: json['id'],
        description: json['description'],
        image: json['image'],
        deviceName: json['deviceName'],
        price: json['price'],
        prand: json['prand'],
        status: json['status'],
        isoffer: json['isoffer']);
  }
}
