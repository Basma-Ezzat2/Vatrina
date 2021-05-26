import 'package:flutter/material.dart';
import 'package:vatrina_shop/widgets/app_drawer.dart';
class OrdersScreen extends StatelessWidget {
  static const routeName = '/OrdersScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("OrdersScreen"))),
      body: Center(child: Text("OrdersScreen")),
      drawer: AppDrawer(),
    );
  }
}