import 'package:flutter/material.dart';
import 'package:vatrina_shop/widgets/app_drawer.dart';
class UserProductsScreen extends StatelessWidget {
  static const routeName = '/UserProductsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("UserProductsScreen"))),
      body: Center(child: Text("UserProductsScreen")),
      drawer: AppDrawer(),
    );
  }
}