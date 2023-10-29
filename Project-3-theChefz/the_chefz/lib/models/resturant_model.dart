class Resturant {
  final String restaurantName;
  final String restaurantImage;
  final String restaurantLogo;
  final String location;
  final String rating;
  final String ratingMember;
  final String description;
  final List<Map<String, String>> restaurantMenu;
  Resturant({
    required this.restaurantMenu,
    required this.restaurantName,
    required this.restaurantImage,
    required this.restaurantLogo,
    required this.location,
    required this.rating,
    required this.ratingMember,
    required this.description,
  });

  factory Resturant.fromJson(Map<String, dynamic> resturantData) {
    return Resturant(
      description: resturantData['description'],
      restaurantName: resturantData['restaurant_name'],
      restaurantImage: resturantData['restaurant_image'],
      restaurantLogo: resturantData['restaurant_logo'],
      location: resturantData['location'],
      rating: resturantData['rating'],
      ratingMember: resturantData['rating_member'],
      restaurantMenu: resturantData['menu'],
    );
  }
}
