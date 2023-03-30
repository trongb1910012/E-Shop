import 'package:flutter/material.dart';
import 'package:project/screens/cart_screen.dart';
// import 'package:project/widgets/all_pdts.dart';
// import 'package:project/widgets/category.dart';
import 'package:project/widgets/home_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("E-shop"),
        actions: <Widget>[
          IconButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(CartScreen.routeName),
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
              ))
        ],
      ),
      body: HomeBody(),
    );
  }
}
