# Tugas 7: Elemen Dasar Flutter

Nama: Muhammad Hafizha Dhiyaulhaq

NPM: 2106750723

Kelas: D

1. Stateless widget vs Stateful widget

    a. Stateless Widget
    
    Merupakan widget yang tidak bisa diubah saat pertama kali di render

    b. Stateful Widget

    Merupakan widget yang bisa berubah saat pertama kali di render sesuai dengan action yang dilakukan oleh user atau saat menerima data dan dapat berubah berulang-ulang

2. Widget yang digunakan dalam proyek kali ini:

    a. MatrialApp() merupakan widget yang berfungsi sebagai pembungkus dari widget-widget yang lain dan menerapkan Material design beserta komponennya

    b. Scaffold() merupakan widget yang digunakan untuk mengimplementasi struktur dasar dari Material design

    c. AppBar() merupakan widget yang akan meng-generate bar yang berisi toolbar dan widget lainnya

    d. Column() merupakan widget yang mengatur widget-widget lainnya secara vertikal

    e. Row() sama halnya dengan column() tapi mengatur secara horizontal

    f. Center() merupakan widget yang mengatur center alignment pada childnya

    g. Padding() merupakan widget yang memberikan padding atau jarak tertentu pada widget yang lain

    f. Icon() merupakan widget yang mengimplementasi icon

    g. FloatingActionButton() merupakan widget yang berfungsi untuk membuat button

    h. Text() widget yang menampilkan text

3. setState()

    Fungsi `setState()` merupakan fungsi yang akan memberi tahu flutter bahwa ada perubahan pada suatu state yang mengharuskan untuk di render ulang akan perubahan yang terjadi dapat terlihat

    Pada tugas 7 ini, variabel yang berubah adalah `_counter` dan `_display`

4. `const` vs `final`

    Keduanya merupakan keyword yang digunakan untuk membuat variabel yang tidak bisa di-assign kembali

    Yang menjadi pembeda adalah `const` menyimpan value pada saat compile-time. Sebagai contoh:

        const a = 1;

    Sedangkan, `final` menyimpan value pada saat run-time. Contoh:

        final a = new DateTime.now() 

    Perbedaan yang lain adalah field dari objek yang ada di dalam `final` bisa dimodifikasi, sedangkan pada `const` tidak.

5. Implementasi tugas 7

    1. Membuat `counter_7` app dengan memanggil perintah berikut

            flutter create counter_7
    
    2. Membuat fungsi `_decrementCounter` yang akan mengurangi variabel `_counter` dan fungsi `_setDisplay` yang mengatur display text berupa `Genap` atau `Ganjil`

    3. Mengatur warna dari text sesuai ketentuan, jika `Genap` maka berwarna merah dan `Ganjil` maka berwarna biru

    4. Menambahkan button `+` dan `-` yang akan memanggil fungsi `_incrementCounter()` dan `_decrementCounter` serta mengatur visibility pada button `-` supaya hilang ketika `_counter` bernilai 0 (BONUS).


# Tugas 8: Flutter Form

1. Navigator.push vs Navigator.pushReplacement

    `Navigator.push()` merupakan metode yang digunakan untuk menavigasi route yang cara kerjanya mirip dengan stack yaitu menambahkan route pada top of stack

    `Navigator.pushReplacement()` mirip dengan push namun akan menggantikan route yang sekarang dan ditimpa dengan route yang di push

2. Widget 

    1. TextFormField(): Wiget untuk membuat input field
    2. DropdownButton(): Untuk membuat dropdown
    3. TextButton(): Membuat button
    4. Card(): Membuat card
    5. Dialog(): Untuk menampilkan dialog yang muncul pada layar
    6. Drawer(): Untuk membuat akses menuju route lain

3. Event

    1. onTap: memanggil fungsi yang didefinisikan ketika user melakukan tap pada widget
    2. onPressed: memanggil fungsi yang didefinisikan ketika user menekan suatu button
    3. onSaved: memanggil fungsi yang didefinisikan untuk menyimpan input dari form
    4. onChanged: memanggil fungsi yang didefinisikan ketika user mengubah isi input TextFormField

4. Cara kerja navigator

    Navigator bekerja sebagai widget yang mengatur route yang ada. Cara kerjanya adalah dengan menggunakan implementasi sepeti stack dimana kita harus melakukan push() dan pop() dan akan menampilkan route yang ada pada top of stack

5. Implementasi tugas 8

    1. Membuat drawer dengan tiga halaman yang dapat diakses yaitu counter_7, tambah budget (untuk menambahkan budget), dan data budget (untuk menampilkan budget yang telah dibuat)
    2. Membuat form.dart yang berisikan form untuk menerima input data dari user
    3. Membuat class Budget yang berfungsi untuk membuat objek baru berdasarkan input user yang diberikan
    4. Menampilkan data budget yang telah dibuat pada halaman data_budget.dart dengan memanfaatkan widget card untuk mengatur tampilan dari budget
    5. Refactor drawer ke file drawer.dart (BONUS)

# Tugas 9: Integrasi Web Service pada Flutter

1. Pengambilan data JSON tanpa membuat model terlebih dahulu dapat dilakukan. Namun hal tersebut dinilai kurang praktis dan efisien karena kita harus mengolah response JSON dari web secara manual. Oleh karena itu sebaiknya dibuat model terlebih dahulu agar lebih terstruktur saat digunakan.

2. Widget

    1. `Flexible()` merupakan widget yang mengatur fleksibilitas dari `Row`, `Column`, dan `Flex`
    2. `FutureBuilder()` merupakan widget yang mem-build dirinya sendiri berdasarkan snapshot dari `Future`
    3. `GestureDetector()` merupakan widget yang mendeteksi gesture dari pengguna
    4. `Align()` merupakan widget yang mengatur alignment

3. Alur Mengambil dan Menampilkan data

    1. Membuat model sesuai data JSON
    2. Melakukan HTTP `GET` method untuk mengambil data JSON
    3. Melakukan decode data JSON dan diubah menjadi objek dari model
    4. Menampilkan data JSON yang telah diolah pada widget-widget yang sesuai

4. Implementasi Tugas 9

    1. Menambahkan tombol navigasi pada drawer untuk menuju halaman mywatchlist
    2. Membuat model mywatchlist dengan memanfaatkan website [QuickType](https://app.quicktype.io/) dan disimpan pada file `mywatchlist.dart`
    3. Membuat fungsi `fetchMyWatchList()` untuk mengambil data JSON berdasarkan [Tugas 3](https://assignment-pbp2.herokuapp.com/mywatchlist/json) dan menampilkan setiap judul pada halaman mywatchlist
    4. Menambahkan event `onTap()` untuk melakukan navigasi pada detail dari judul film yang ditekan
    5. Menambahkan halaman detail yang berisi detail dari suatu film
    6. Menambahkan button kembali pada halaman detail yang menuju ke halaman mywatchlist
    