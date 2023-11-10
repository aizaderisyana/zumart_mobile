Nama    : Aiza Derisyana
NPM     : 22060082436
Kelas   : PBP C

Tugas 8

Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

- `Navigator.push()` menambahkan rute baru ke stack navigasi. Pengguna dapat kembali ke rute sebelumnya dengan tombol kembali.
  Contoh: Memindahkan pengguna dari daftar produk ke detail produk, dengan kemungkinan untuk kembali ke daftar.
- `Navigator.pushReplacement()` mengganti rute saat ini dengan rute baru, tanpa menyimpan rute lama di stack navigasi. Pengguna tidak dapat kembali ke rute sebelumnya dengan tombol kembali.
  Contoh: Mengarahkan pengguna dari layar login ke dashboard utama setelah berhasil login, tanpa opsi kembali ke layar login.

Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

    Scaffold:
        Scaffold menyediakan struktur dasar untuk layar material design. Ini memberikan defaults untuk AppBar, Drawer, BottomNavigationBar, FloatingActionButton, dan beberapa fitur lainnya. Dalam kode Anda, Scaffold digunakan untuk membuat struktur dasar halaman utama dan halaman form tambah produk.
    AppBar:
        AppBar muncul di bagian atas aplikasi dan biasanya menampilkan judul, ikon, dan aksi terkait dengan layar saat ini. Ini adalah bagian dari Scaffold dan menyediakan space untuk menampilkan informasi yang relevan dan aksi pada bagian atas layar.
    Drawer:
        Drawer adalah panel yang geser dari sisi layar untuk menampilkan link navigasi dalam aplikasi. Dalam kode Anda, LeftDrawer widget digunakan sebagai drawer, yang memungkinkan pengguna untuk navigasi antara berbagai bagian aplikasi.
    SingleChildScrollView:
        SingleChildScrollView menambahkan kemampuan scrolling pada widget yang memiliki child tunggal yang mungkin meluas melebihi batas layar, yang memungkinkan pengguna untuk scroll melalui konten. Hal ini digunakan baik di halaman utama maupun halaman form untuk memastikan bahwa isi layar dapat discroll jika melebihi ukuran layar.
    Padding:
        Padding widget digunakan untuk menambahkan padding di sekitar widget anaknya. Dalam konteks ini, padding sering kali digunakan untuk memberi ruang antara widgets atau dari tepi layar.
    Column:
        Column digunakan untuk menampilkan widget anaknya dalam susunan vertikal. Di dalam Column Anda bisa meletakkan serangkaian widget yang ingin Anda tampilkan dari atas ke bawah.
    GridView.count:
        GridView digunakan untuk menampilkan widget dalam grid dua dimensi. GridView.count memungkinkan Anda untuk menentukan jumlah kolom dengan crossAxisCount. GridView di dalam kode Anda digunakan untuk menampilkan ShopCard widgets, yang merepresentasikan setiap item dalam grid yang responsif.
    Container:
        Container bisa digunakan untuk menggabungkan dekorasi, transformasi, dan konstrain pada ukuran anaknya. Dalam kode ini, Container menyediakan padding di sekitar Icon dan Text widgets di dalam ShopCard.

Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

    1. `TextFormField` untuk "Name of Product":
    - Alasan Penggunaan: `TextFormField` digunakan untuk mengumpulkan input teks dari pengguna. Dalam kasus ini, elemen ini digunakan untuk mengizinkan pengguna memasukkan nama produk. Penggunaan `validator` memastikan bahwa field tidak dibiarkan kosong.

    2. `TextFormField` untuk "Price":
    - Alasan Penggunaan: `TextFormField` juga digunakan untuk harga produk. Namun, perbedaannya terletak pada validator yang juga memeriksa apakah input merupakan angka. Penggunaan `int.parse` mengubah teks input menjadi nilai integer, yang penting untuk data harga karena harga produk adalah nilai numerik.

    3. `TextFormField` untuk "Amount":
    - Alasan Penggunaan: Mirip dengan field harga, `TextFormField` untuk jumlah memungkinkan pengguna memasukkan jumlah item yang tersedia atau yang ingin ditambahkan. Validator dan `int.parse` digunakan dengan alasan yang sama seperti pada field harga.

    4. `TextFormField` untuk "Description":
    - Alasan Penggunaan: Ini digunakan untuk memungkinkan pengguna memberikan deskripsi produk. Deskripsi adalah teks bebas yang lebih panjang daripada nama produk, dan `validator` digunakan untuk memastikan bahwa setidaknya beberapa deskripsi telah dimasukkan.

    5. Tombol "Save" (`ElevatedButton`):
    - Alasan Penggunaan: Meskipun bukan elemen input dalam arti tradisional, tombol ini digunakan untuk mengirimkan form. Setelah ditekan, form akan memvalidasi semua input menggunakan `GlobalKey<FormState>`. Jika semua data valid, sebuah dialog akan muncul yang menunjukkan informasi yang telah disimpan, dan form direset untuk penggunaan selanjutnya.

Bagaimana penerapan clean architecture pada aplikasi Flutter?

    Penerapan Clean Architecture pada Flutter melibatkan pembagian aplikasi menjadi tiga lapisan utama:
    1. Lapisan Presentasi (Presentation Layer): Berisi UI dan logic untuk mengontrol apa yang ditampilkan di layar, seperti widgets dan state management tools (bisa menggunakan Bloc, Provider, dll).
    2. Lapisan Domain (Domain Layer): Merupakan lapisan tengah yang memiliki aturan bisnis, entitas, dan abstraksi kasus penggunaan (use cases) yang beroperasi atas entitas tersebut.
    3. Lapisan Data (Data Layer): Bertanggung jawab atas akses data, baik dari database lokal maupun API dari jaringan. Terdiri dari model data, repository, dan data source.

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

1. Pertama adalah membuat file baru dalam berkas lib dengan nama zumart_form.dart. Kemudian saya menambahkan elemen input, yaitu name, amount, price, dan description seperti berikut ini.
```
class ShopFormPage extends StatefulWidget {
    const ShopFormPage({super.key});

    @override
    State<ShopFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<ShopFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _price = 0;
  String _description = "";
  int _amount = 0;
```
2. Membuat sebuah tombol save.
    ```
   Align(
     alignment: Alignment.bottomCenter,
     child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: ElevatedButton(
         style: ButtonStyle(
           backgroundColor:
               MaterialStateProperty.all(Colors.indigo),
         ),
         onPressed: () {
           if (_formKey.currentState!.validate()) {}
         },
         child: const Text(
           "Save",
           style: TextStyle(color: Colors.white),
         ),
       ),
     ),
   ),
    ```
3. Melakukan validasi untuk memastikan setiap elemen input tidak kosong dan sesuai dengan tipe data atribut modelnya.
    ```
    validator: (String? value) {
    if (value == null || value.isEmpty) {
        return "Amount tidak boleh kosong!";
    }
    if (int.tryParse(value) == null) {
        return "Amount harus berupa angka!";
    }
    return null;
    },
    ```
4. Menggunakan navigator.push() untuk diarahkan ke halaman form ketika tambah item ditekan.
    ```
    if (item.name == "Tambah Item") {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => const ShopFormPage()));
    }
    ```
5. Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol "Save" pada halaman formulir tambah item baru.
    ```
   onPressed: () {
    if (_formKey.currentState!.validate()) {
    showDialog(
        context: context,
        builder: (context) {
        return AlertDialog(
            title: const Text('Produk berhasil tersimpan'),
            content: SingleChildScrollView(
            child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                Text('Name: $_name'),
                Text('Price: $_price'),
                Text('Amount: $_amount'),
                Text('Description: $_description'),
                ],
            ),
            ),
            actions: [
            TextButton(
                child: const Text('OK'),
                onPressed: () {
                Navigator.pop(context);
                },
            ),
            ],
        );
        },
    );
    _formKey.currentState!.reset();
    }
},
    ```
6. Buat sebuah drawer pada aplikasi Anda dengan menggunakan widget Drawer dan tambahkan opsi untuk ke halaman utama dan tambah item. Ketika salah satu opsi dipilih, gunakan Navigator.pushReplacement untuk melakukan navigasi ke halaman yang sesuai.
```
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
                'Shopping List',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Text(
                  "Catat seluruh keperluan belanjamu di sini!",
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
            title: const Text('Halaman Utama'),
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
            title: const Text('Tambah Produk'),
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
        ],
      ),
    );
  }
```


============================================================================================================================================
============================================================================================================================================

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
