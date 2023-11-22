Nama    : Aiza Derisyana
NPM     : 22060082436
Kelas   : PBP C

Tugas 9

Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

  Tentu, kita dapat mangambil data dalam format JSON tanpa melakukan pemodelan terlebih dahulu. Namun, pendekatan ini mungkin akan lebih menantang dalam konteks pemetaan data ke dalam struktur peta, terutama ketika bekerja dengan objek map. Sebaliknya, pembuatan model data sebelumnya dapat membantu mengurangi potensi kesalahan ketika Anda berurusan dengan data JSON atau mencoba untuk memetakan data ke dalam struktur yang diinginkan. Proyek di GitHub juga menjelaskan cara mengakses data JSON tanpa membuat model terlebih dahulu dengan memasukkan data JSON ke dalam objek peta (map). Namun, penting untuk diingat bahwa pengambilan data JSON tanpa menggunakan model mungkin akan menghadirkan tantangan dalam pemetaan data dengan benar ke dalam objek peta.

Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter

  **Fungsi dari CookieRequest**:
  1. Menyimpan Info Login: CookieRequest membantu menyimpan informasi seperti detail login kita. Jadi, jika kita sudah masuk (login) ke dalam aplikasi, CookieRequest membantu agar kita tidak perlu login lagi setiap kali membuka halaman baru.
  2. Mengingat Pilihan Kita: Misalnya, jika kita memilih pengaturan tertentu di aplikasi, CookieRequest membantu mengingat pilihan tersebut, sehingga kita tidak perlu mengaturnya lagi setiap kali.

  **Mengapa CookieRequest Dibagikan ke Semua Komponen**:
  1. Konsistensi: Agar setiap bagian dari aplikasi ingat siapa kita sebagai pengguna dan tidak meminta kita untuk login ulang atau mengatur preferensi lagi di setiap halaman.
  2. Efisiensi: Dengan berbagi CookieRequest, aplikasi berjalan lebih cepat dan lancar karena tidak perlu memuat ulang informasi yang sama berulang kali.

Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

  1. Pembuatan Model: Pertama, buat kelas Dart yang mencerminkan struktur data JSON. Kelas ini akan memiliki properti yang sama dengan kunci dalam JSON. Di dalamnya, kita tambahkan fungsi untuk mengubah data dari dan ke format JSON, yang dikenal sebagai metode fromJson dan toJson.
  2. Pengambilan Data: Selanjutnya, kita mengambil data dari sebuah web service. Ini dilakukan dengan mengirimkan permintaan HTTP menggunakan paket http di Flutter, dan mendapatkan balasan dalam bentuk JSON.
  3. Parsing Data JSON: Balasan JSON yang diterima diubah menjadi objek Dart menggunakan fungsi jsonDecode. Ini mengubah JSON menjadi Map atau List di Dart.
  4. Konversi Menggunakan Model: Data JSON yang sudah diubah menjadi objek Dart selanjutnya dikonversi menjadi objek model menggunakan metode fromJson yang kita definisikan. Jika data berupa array, kita proses setiap elemen array untuk diubah menjadi objek model.
  5. Menampilkan Data: Akhirnya, untuk menunjukkan data di Flutter, kita memanfaatkan widget yang tersedia. Contohnya, menggunakan ListView.builder untuk menampilkan daftar item.

Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

  Proses autentikasi yang menghubungkan aplikasi Flutter dengan backend Django terjadi dalam beberapa langkah penting. Awalnya, di aplikasi Flutter, pengguna memasukkan informasi akun seperti username dan password melalui tampilan pengguna. Flutter lalu mengirim data ini ke server Django menggunakan permintaan HTTP bertipe POST, dengan data dalam format JSON. Django, setelah menerima data ini, memulai proses autentikasi yang meliputi verifikasi detail akun terhadap database untuk memastikan keakuratan dan kevalidan informasi tersebut. Jika verifikasi berhasil, Django menghasilkan token autentikasi dan mengirimkannya kembali ke Flutter.
  Setelah Flutter menerima respons dari Django, aplikasi bereaksi sesuai dengan hasil autentikasi. Apabila pengguna berhasil terautentikasi, aplikasi menyimpan token dan mengarahkan pengguna ke halaman utama atau dashboard, memungkinkan akses ke berbagai fitur sesuai dengan hak akses pengguna. Jika autentikasi tidak berhasil, aplikasi Flutter akan menampilkan pesan error dan meminta pengguna untuk mencoba lagi. Setelah berhasil login, pengguna dapat mengakses dan berinteraksi dengan menu atau fitur yang tersedia di aplikasi, yang sekarang aman berkat proses verifikasi identitas oleh Django. Proses ini memastikan keamanan data dan akses eksklusif kepada pengguna yang terautentikasi untuk fitur tertentu dalam aplikasi.

Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

  - **Form**: Widget yang digunakan untuk membuat form input.
  - **GlobalKey<FormState>**: Kunci yang digunakan untuk mengontrol state form.
  - **TextFormField**: Widget input teks dengan validasi yang terintegrasi.
  - **InkWell**: Widget ini digunakan untuk menangani ketukan pada item daftar. Ketika item ditekan, ia akan menavigasi ke DetailProductPage dengan data item yang relevan
  - **Material**: Widget yang menambahkan efek visual material design.
  - **Center**: Widget yang menengahkan child widgetnya.
  - **Provider**: Widget yang digunakan untuk mengelola state aplikasi secara lebih efisien.
  - **CookieRequest (Custom Widget)**: Widget kustom yang mungkin terkait dengan request otentikasi atau manajemen cookie. 
  - **ShopCard (Custom Widget)**: Widget kustom, mungkin untuk menampilkan informasi produk atau item dalam format kartu.
  - **ShopItem (Custom Widget)**: Struktur data kustom yang mungkin digunakan untuk menampung data item dalam aplikasi.
  - **MaterialApp**: Widget root dalam aplikasi Flutter yang menggunakan material design.
  - **Provider (Package)**: Paket yang digunakan untuk manajemen state di Flutter.

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

  1. **Membuat Halaman Formulir Penambahan Produk Baru**: 
      Pertama, menambahkan aplikasi baru yang bernama authentication ke proyek Django. Untuk mendukung fungsi login, saya membuat fungsi dengan nama yang sama di dalam file views.py dan kemudian mengatur routing-nya agar dapat diakses. Lalu, melanjutkan membuat tampilan login pada sisi Flutter dengan membuat file baru bernama login.dart di dalam folder screens. File ini berisi kode yang berkaitan dengan tampilan login pada aplikasi Flutter.

  2. **Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter**:
      Langkah awal yang saya ambil adalah menambahkan dua paket ke aplikasi Flutter saya. Paket-paket tersebut adalah `provider` dan `pbp_django_auth`, yang saya tambahkan dengan menggunakan perintah `flutter pub add` untuk masing-masing paket. Setelah itu, saya membuat perubahan pada kode di file `main.dart` untuk mengintegrasikan dan mengkonfigurasi `CookieRequest` library yang digunakan untuk otentikasi dan pengelolaan sesi.

  3. **Membuat model kustom sesuai dengan proyek aplikasi Django**:
      Menyalin data JSON dan menempelkannya di Quicktype, sebuah alat yang membantu dalam mengonversi JSON ke kode. Selanjutnya, saya membuat sebuah folder baru di dalam direktori `lib` aplikasi Flutter saya dengan nama `models`. Setelah folder dibuat, saya lanjutkan dengan membuat file baru di dalam folder tersebut, diberi nama `product.dart`. Kode yang telah dicopy dari Quicktype sebelumnya kemudian saya tempelkan di dalam file `product.dart` ini.
   
  4.  **Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.**:
      Membuat sebuah file baru yang dinamai `list_product.dart` di dalam direktori `screens`. Selanjutnya, saya mengisi file tersebut dengan kode yang telah disediakan. Kelas yang dibuat dalam kode tersebut berfungsi untuk mengelola daftar produk yang diambil dari format JSON dan mengubahnya menjadi objek `Product`. Kode ini dirancang untuk menampilkan informasi seperti nama, jumlah, dan deskripsi dari setiap item yang terdapat dalam daftar produk.

  5.  **Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item**:
      Membuat file baru yang saya beri nama `detail_page.dart` di dalam folder screens. Setelah itu, saya mengisi file tersebut dengan kode yang telah disiapkan, yang berkaitan dengan halaman detail produk di aplikasi.

===============================================================================================================================
===============================================================================================================================

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
