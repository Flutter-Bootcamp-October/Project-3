class Product {
  final String productName;
  final String productRating;
  final String productRatingMember;
  final String productPrice;
  final String productImage;
  final String description;
  final String cal;
  final String note;

  Product({
    required this.description,
    required this.cal,
    required this.note,
    required this.productName,
    required this.productRating,
    required this.productRatingMember,
    required this.productPrice,
    required this.productImage,
  });

  factory Product.fromJson(Map<String, String> productData) {
    return Product(
      note: productData['note']!,
      description: productData['description']!,
      cal: productData['cal']!,
      productImage: productData['product_image']!,
      productName: productData['product_name']!,
      productRating: productData['product_rating']!,
      productRatingMember: productData['product_rating_member']!,
      productPrice: productData['product_price']!,
    );
  }
}
