import 'package:flutter/material.dart';
import 'package:zumart/screens/list_product.dart';
import 'package:zumart/widgets/left_drawer.dart';
import 'package:zumart/screens/zumart_form.dart';
import 'package:zumart/widgets/shop_card.dart';



class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<ShopItem> items = [
  ShopItem("Lihat Item", Icons.checklist),
  ShopItem("Tambah Item", Icons.add_shopping_cart),
  ShopItem("Logout", Icons.logout),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' ZUMART ',
        ),
        backgroundColor: Color.fromARGB(255, 13, 40, 192),
        foregroundColor: Colors.white, 
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'ZUMART Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: AutofillHints.addressState,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 13, 40, 192)
                  ),
                ),
              ),
              GridView.count(
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((ShopItem item) {
                  return ShopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
