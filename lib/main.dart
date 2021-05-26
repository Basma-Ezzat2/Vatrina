import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:vatrina_shop/providers/Orders.dart';
import 'package:vatrina_shop/providers/auth.dart';
import 'package:vatrina_shop/providers/cart.dart';
import 'package:vatrina_shop/providers/products.dart';
import 'package:vatrina_shop/screens/Orders_screen.dart';
import 'package:vatrina_shop/screens/card_screen.dart';
import 'package:vatrina_shop/screens/edit_product_screen.dart';
import 'package:vatrina_shop/screens/product_detail_screen.dart';
import 'package:vatrina_shop/screens/product_overview_screen.dart';
import 'package:vatrina_shop/screens/user_products_screen.dart';
import 'package:vatrina_shop/screens/splash_screen.dart';
import './screens/auth_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Auth()),
        ChangeNotifierProvider.value(value: Products()),
        ChangeNotifierProvider.value(value: Cart()),
        ChangeNotifierProvider.value(value: Orders()),
      ],
    child: Consumer<Auth> (
          builder:(ctx, auth, _)=> MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primarySwatch: Colors.blue,
              accentColor: Colors.blueAccent,
              fontFamily: 'Lato',
            ),
          home:auth.isAuth? ProductOverviewScreen(): FutureBuilder(
            future: auth.tryAutoLogin(),
            builder: (ctx, AsyncSnapshot authSnapshot) =>
            authSnapshot.connectionState== ConnectionState.waiting?
            SplashScreen()
                :AuthScreen(),
          ),
            routes: {
              ProductDetailScreen.routeName: (_)=>ProductDetailScreen(),
              CardScreen.routeName: (_)=>CardScreen(),
              OrdersScreen.routeName: (_)=>OrdersScreen(),
              UserProductsScreen.routeName: (_)=>UserProductsScreen(),
              EditProductScreen.routeName: (_)=>EditProductScreen(),
            },
          ),
       ));
  }
}
