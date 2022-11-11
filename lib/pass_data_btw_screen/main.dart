import 'package:flutter/material.dart';
import './product_list_screen.dart';
import './single_product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  ProductListScreen(),
      routes: {
        "single-product": (context) =>  SingleProductScreen(),
      },
    );
  }
}