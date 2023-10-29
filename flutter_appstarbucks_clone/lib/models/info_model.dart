class Information {
  final String firstName;
  final String lastName;
  final String emailAddress;
  final String birthMonth;
  final String birthDay;

  Information({
    this.firstName = "",
    this.lastName = "",
    this.emailAddress = "",
    this.birthMonth = "",
    this.birthDay = "",
  });

  factory Information.fromJson(Map json) {
    return Information(
        firstName: json["firstName"] ?? "",
        lastName: json["lastName"] ?? "",
        emailAddress: json["emailAddress"] ?? "",
        birthMonth: json["birthMonth"] ?? "",
        birthDay: json["birthDay"] ?? "");
  }
}
