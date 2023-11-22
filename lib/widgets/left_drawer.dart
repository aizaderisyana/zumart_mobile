import 'package:flutter/material.dart';
import 'package:zumart/screens/list_product.dart';
import 'package:zumart/screens/menu.dart';
import 'package:zumart/screens/zumart_form.dart';


class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
            color: Color.fromARGB(255, 13, 40, 192),
          ),
          child: Column(
            children: [
              Text(
                'ZUMART',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Text(
                  "Your Shoe Collection",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
            ],
          ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Main Page'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Add Item'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShopFormPage(),
              ),
            );
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text('List of Item'),
            onTap: () {
                // Route menu ke halaman produk
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductPage()),
                );
            },
        ),
        ],
      ),
    );
  }
}