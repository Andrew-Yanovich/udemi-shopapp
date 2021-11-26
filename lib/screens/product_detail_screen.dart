import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;
  //
  // const ProductDetailScreen({Key? key, required this.title, required this.price}) : super(key: key);

  static const routName = '/product-detail';


  @override
  Widget build(BuildContext context) {
    final String productId = ModalRoute.of(context)!.settings.arguments as String; // is the id
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      //body: ,
    );
  }
}
