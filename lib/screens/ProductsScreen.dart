import 'package:flutter/material.dart';
import 'package:flutter_project/data/repository.dart';
import 'package:flutter_project/models/Product.dart';
import 'package:flutter_project/widgets/ProdcuctCard.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  static const String PageRoute = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text("ProductsScreen")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Handle item tap
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Handle item tap
              },
            ),
          ],
        ),
      ),
      body: FutureBuilder<List<Product>>(
        future: ProductRepository.getProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final products = snapshot.data!;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCard(
                  image: product.image,
                  title: product.title,
                  price: product.price,
                );
              },
            );
          } else {
            return const Center(child: Text('No products found.'));
          }
        },
      ),
    );
  }
}
