

class Packagedata {
  final String Name;
  final String Type;
  final String Price;
  final String ImageCalls;
  final String calls;
  final String ImageWifi;
  final String Wifi;
  final String ImageDuration;
  final String duration;
  final String ImageApp;
  final String app;
  final String ImageGiftapp;
  final String giftapp;
  final String ImageNetwork;
  final String network;

  Packagedata(
      {required this.ImageCalls,
      required this.ImageWifi,
      required this.ImageDuration,
      required this.ImageApp,
      required this.ImageGiftapp,
      required this.ImageNetwork,
      required this.Name,
      required this.Type,
      required this.Price,
      required this.calls,
      required this.Wifi,
      required this.duration,
      required this.app,
      required this.giftapp,
      required this.network});

  factory Packagedata.fromJson(Map json) {
    return Packagedata(
      Name: json['Name'],
      Type: json['Type'],
      Price: json['Price'],
      calls: json['calls'],
      Wifi: json['Wifi'],
      duration: json['duration'],
      app: json['app'],
      giftapp: json['giftapp'],
      network: json['network'],
      ImageCalls: json['ImageCalls'],
      ImageWifi: json['ImageWifi'],
      ImageDuration: json['ImageDuration'],
      ImageApp: json['ImageApp'],
      ImageGiftapp: json['ImageGiftapp'],
      ImageNetwork: json['ImageNetwork'],
    );
  }
}
