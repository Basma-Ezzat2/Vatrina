import 'package:flutter/material.dart';
class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: Center(child: Text("ProductDetailScreen"))),
          body: Center(child: Text("ProductDetailScreen")),
        );
  }
}
