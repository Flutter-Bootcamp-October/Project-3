import 'package:flutter/material.dart';

List CategoryList = [
  "View All",
  "Shop Online",
  "Restaurants",
  "Cafes & Drinks",
  "Fitness",
  "Sweets & Bakery",
  "Shopping",
  "Entertainment and Tourism",
  "Pesronal Care",
  "Car",
  "Home",
  "Perfumes",
  "Travel & Tourism",
  "Education and training",
  "Health Care",
  "CashBack",
  "Drinks",
  "Services",
  "Optical",
  "Coffee",
  "Jewelry and Accessories"
];

class CategoryHorisintal extends StatelessWidget {
  const CategoryHorisintal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      color: Colors.white,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: CategoryList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Text(
              "${CategoryList[index]}",
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 4),
      ),
    );
  }
}
