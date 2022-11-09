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