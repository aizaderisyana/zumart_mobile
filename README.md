Nama    : Aiza Derisyana
NPM     : 22060082436
Kelas   : PBP C

TUGAS 7

Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
    - Stateless Widget:
    Stateless widget adalah widget yang tidak dapat berubah setelah dibuat. Ini berarti setiap kali Anda ingin mengubah tampilan widget tersebut, Anda harus membuat widget yang baru.
    Stateless widget tidak memiliki keadaan (state) internal yang berubah. Mereka bergantung pada data yang diberikan saat mereka dibuat dan tidak menyimpan keadaan di dalam diri mereka sendiri.
    Stateless widget biasanya digunakan untuk bagian tampilan yang tidak perlu diperbarui secara dinamis.
    - Stateful Widget:
    Stateful widget adalah widget yang dapat berubah atau memiliki keadaan internal yang dapat berubah seiring waktu. Mereka dapat diperbarui dan membangun ulang diri mereka sendiri saat keadaan mereka berubah.
    Stateful widget digunakan ketika Anda perlu memperbarui tampilan berdasarkan perubahan keadaan tertentu, misalnya, data yang diperoleh dari sumber eksternal atau tindakan pengguna.
    Stateful widget memiliki kelas turunan yang disebut State, yang mengelola keadaan internal dan mengatur bagaimana widget harus dirender ulang ketika keadaan berubah.


Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
    Contoh stateless widget adalah di tugas 7 ini adalah MyHomePage. Ini karena tampilan halaman tersebut tidak memiliki keadaan yang berubah seiring waktu. Halaman tersebut hanya menampilkan daftar item yang tidak berubah, seperti daftar tombol akses. ShopCard juga merupakan stateless widget, karena itu adalah item dalam daftar yang juga tidak berubah secara dinamis. Penggunaan stateless widget pada elemen-elemen yang tidak memerlukan perubahan keadaan adalah pendekatan yang baik karena stateless widget lebih efisien dan sederhana.

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step
    1. Pertama buat app baru di terminal dengan menggunakan `flutter create zumart` lalu lakukan cd ke file zumart tersbut dengan `cd zumart`
    2. Jalankan flutter dengan `flutter run` dan pilih Chrome untuk menjalankan flutter
    3. lakukan `flutter config --enable-web` di terminal lalu jalankan lagi `flutter run -d chrome`
    4. Setelah itu, membuat repository baru dengan nama zumart_mobile dan melakukan git add, commit dan push
    5. Pada direktori zumart/lib, buat file baru dengan nama menu.dart lalu tambahkan `import package:flutter/material.dart';`
    6. Pindahkan potogan kode dari file main.dart pada line 34 sampai akhir ke file menu.dart
    7. Tambahkan `import 'package:zumart/menu.dart';` dalam file main.dart untuk mengatasi error
    8. Mengubah kode pada main.dart dibagian tema aplikasi kamu yang mempunyai tipe Material Color `colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 28, 52, 189)),`
    9. Ubah kode dalam main.dart menjadi `MyHomePage()`
    10. Dalam file menu.dart ubah ({super.key, required this.title}) menjadi ({Key? key}) : super(key: key);, lalu hapus potongan kode `final String title;` dan hapus fungsi State yang ada dibawah bagian stateless widget ini.
    11. Dalam menu.dart tambahkan kode berikut untuk men define tipe1
        ```
        class ShopItem {
            final String name;
            final IconData icon;

            ShopItem(this.name, this.icon);
        }
        ```
        lalu di bawah kode tersebut tambahkan 
        ```
        final List<ShopItem> items = [
            ShopItem("Lihat Item", Icons.checklist),
            ShopItem("Tambah Item", Icons.add_shopping_cart),
            ShopItem("Logout", Icons.logout),
        ];
        ```
    12. Dalam widget build tambahkan
        ```
            Color buttonColor = getButtonColor(item.name);

            return Material(
            color: buttonColor, // Menggunakan warna sesuai dengan item
            child: InkWell(
                onTap: () {
                ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                        content: Text("Kamu telah menekan tombol ${item.name}!")));
                },
                child: Container(
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
        ```
    13. Lalu tambahkan untuk memberi warna pada widget
        ```
        Color getButtonColor(String itemName) {
            if (itemName == "Lihat Item") {
            return Color.fromARGB(255, 1, 20, 130);
            } else if (itemName == "Tambah Item") {
            return Color.fromARGB(255, 13, 40, 192);
            } else if (itemName == "Logout") {
            return Color.fromARGB(255, 84, 110, 255);
            } else {
            return const Color.fromARGB(255, 0, 28, 185); 
            }
        }
        ```
