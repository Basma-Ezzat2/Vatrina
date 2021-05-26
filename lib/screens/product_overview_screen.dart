import 'package:flutter/material.dart';
import 'package:vatrina_shop/widgets/app_drawer.dart';

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: Center(child: Text("Vatrina"))),
          body: Center(child: Text("Text")),
          drawer: AppDrawer(),

        );
  }
}
