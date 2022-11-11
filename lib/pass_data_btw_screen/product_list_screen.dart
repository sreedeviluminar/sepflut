import 'package:flutter/material.dart';
import './dummy_data.dart';

class ProductListScreen extends StatelessWidget {
  // This function is triggered when the user tap on a product
  void _goToSingle(context, productId) {
    Navigator.of(context).pushNamed("single-product", arguments: productId);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List Screen"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: dummyProducts.map((Product) {
          return TextButton(
              onPressed: () => _goToSingle(context, Product["id"]),
              child: Text(Product["name"]));
        }).toList(),
      ),
    );
  }
}