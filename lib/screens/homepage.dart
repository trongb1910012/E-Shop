import 'package:flutter/material.dart';
import 'package:project/screens/cart_screen.dart';
// import 'package:project/widgets/all_pdts.dart';
// import 'package:project/widgets/category.dart';
import 'package:project/widgets/home_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 42, 159, 79),
              ),
              child: Center(
                child: Text(
                  'E-Shop',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            ListTile(
              title: const Text('Cart'),
              onTap: () =>
                  Navigator.of(context).pushNamed(CartScreen.routeName),
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
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
