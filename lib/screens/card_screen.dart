import 'package:flutter/material.dart';
class CardScreen extends StatelessWidget {
  static const routeName = '/card';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("CardScreen"))),
      body: Center(child: Text("CardScreen")),
    );
  }
}