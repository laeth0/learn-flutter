import 'package:flutter/material.dart';
import 'package:flutter_project/models/Product.dart';
import 'package:flutter_project/screens/DetailsScreen.dart';
import 'package:flutter_project/widgets/ProductCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String PageRoute = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('electrical Store'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
                ListView.builder(
                  itemBuilder:
                      (context, index) => ProductCard(
                        index: index,
                        product: products[index],
                        onTap: () {
                          Navigator.pushNamed(context, DetailsScreen.PageRoute);
                        },
                      ),
                  itemCount: products.length,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
