class History {
  final String companyname;
  final String price;
  final String date;

  History({required this.companyname, required this.price, required this.date});
  factory History.fromjason(Map json) {
    return History(
      companyname: json['companyname'],
      price: json['price'],
      date: json['date'],
    );
  }
}
