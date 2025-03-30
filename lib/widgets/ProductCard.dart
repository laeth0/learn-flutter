import 'package:flutter/material.dart';
import 'package:flutter_project/models/Product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.index,
    required this.onTap,
  });

  final int index;
  final Product product;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 190,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 25,
                    offset: Offset(0, 15),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 180,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(product.image, fit: BoxFit.fill),
              ),
            ),
            Positioned(
              right: 30,
              top: 80,
              child: Column(
                children: [
                  Text("headPhone", style: TextStyle(fontSize: 20)),
                  Text(
                    "high quality",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text("Price : 18\$"),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
