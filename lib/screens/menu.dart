import 'package:flutter/material.dart';
import 'package:zumart/widgets/left_drawer.dart';
import 'package:zumart/screens/zumart_form.dart';
import 'package:zumart/widgets/shop_card.dart';



class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

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

final List<ShopItem> items = [
  ShopItem("Lihat Item", Icons.checklist),
  ShopItem("Tambah Item", Icons.add_shopping_cart),
  ShopItem("Logout", Icons.logout),
];

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    Color cardColor; // Warna latar belakang card

    // Tentukan warna berdasarkan nama item
    if (item.name == "Lihat Item") {
      cardColor = Color.fromARGB(255, 1, 20, 130);
    } else if (item.name == "Tambah Item") {
      cardColor = Color.fromARGB(255, 13, 40, 192);
    } else if (item.name == "Logout") {
      cardColor = Color.fromARGB(255, 84, 110, 255);
    } else {
      cardColor = Colors.grey; 
    }

    return Material(
      color: cardColor, // Atur warna latar belakang card
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
                if (item.name == "Tambah Item") {
                  // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ShopFormPage()));
                }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}
