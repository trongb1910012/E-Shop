import 'package:flutter/material.dart';
import 'package:project/models/orders.dart';
import 'package:project/models/products.dart';
import 'package:project/screens/homepage.dart';
import 'package:project/screens/pdt_detail.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../screens/cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Products()),
        ChangeNotifierProvider.value(value: Orders()),
        ChangeNotifierProvider.value(value: Cart())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-Shop',
        theme: ThemeData(
          primaryColor: Colors.red,
        ),
        home: HomePage(),
        routes: {
          DetailPage.routeName: (context) => DetailPage(),
          CartScreen.routeName: (context) => CartScreen(),
        },
      ),
    );
  }
}
