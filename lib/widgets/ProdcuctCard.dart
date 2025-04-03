import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image, title;
  final double price;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(image, width: 50),
      title: Text(title),
      subtitle: Text('\$${price}'),
    );
  }
}
