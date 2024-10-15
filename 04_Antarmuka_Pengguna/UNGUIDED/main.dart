import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rekomendasi Wisata'),
          backgroundColor: Colors.pink,
          elevation: 0, // Menghilangkan bayangan
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 3, 37, 95), const Color.fromARGB(255, 93, 4, 121)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SingleChildScrollView( // Tambahkan SingleChildScrollView
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Judul Tempat Wisata
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Pabrik Gula Kalibagor',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 16),

                  // Gambar Tempat Wisata dalam Card
                  Card(
                    elevation: 0, // Menghilangkan bayangan pada Card
                    margin: EdgeInsets.symmetric(horizontal: 16.0), // Margin agar Card tidak menempel
                    child: Column(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgtvsGaecJAdRy1g0sxaw-WHJxQmbOE9taA&s',
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Rating: ⭐⭐⭐⭐',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),

                  // Deskripsi Tempat Wisata
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Pabrik Gula Kalibagor dulu adalah pabrik terbesar milik Belanda di Banyumas.'
                      'Pabrik Gula Kalibagor di sokong oleh perkebunan tebu seluas 400 bau atau 280 hektar lokasinya di dearah sokaraja sampai purbalingga, yang membuat kota kalibagor-sokaraja menjadi kota industri yang sangat ramai di massa nya.'
                      'Pabrik Gula Kalibagor ini berdiri pada tahun 1839 didirikan oleh Sir Edward Cooke dan berhenti beroperasi sekitar tahun 1996-1997 setahun sebelum era reformasi.'
                      'Pada masa kejayaan pabrik ini, Daerah Kalibagor menjadi ramai dan dipenuhi berbagai tempat industri.'
                      'Pabrik Gula Kalibagor berada di tepi jalan utama Sokaraja, Banyumas dan pabrik ini berdekatan langsung dengan kompleks perumahan Belanda masa dulu yang sudah tidak berpenghuni selama bertahun-tahun.'
                      'Karena sudah tidak berpenghuni selama bertahun-tahun akhirnya membuat berbagai tumbuhan liar menghiasi kompleks bangunan ini.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Tombol Kunjungi dengan Animasi
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan kode tindakan di sini!
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    child: Text('Kunjungi Sekarang', style: TextStyle(color: Colors.black),),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Pabrik Gula Kalikidang',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 16),

                  // Gambar Tempat Wisata dalam Card
                  Card(
                    elevation: 0, // Menghilangkan bayangan pada Card
                    margin: EdgeInsets.symmetric(horizontal: 16.0), // Margin agar Card tidak menempel
                    child: Column(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgtvsGaecJAdRy1g0sxaw-WHJxQmbOE9taA&s',
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Rating: ⭐⭐⭐⭐',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),

                  // Deskripsi Tempat Wisata
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Pabrik Gula Kalibagor dulu adalah pabrik terbesar milik Belanda di Banyumas.'
                      'Pabrik Gula Kalibagor di sokong oleh perkebunan tebu seluas 400 bau atau 280 hektar lokasinya di dearah sokaraja sampai purbalingga, yang membuat kota kalibagor-sokaraja menjadi kota industri yang sangat ramai di massa nya.'
                      'Pabrik Gula Kalibagor ini berdiri pada tahun 1839 didirikan oleh Sir Edward Cooke dan berhenti beroperasi sekitar tahun 1996-1997 setahun sebelum era reformasi.'
                      'Pada masa kejayaan pabrik ini, Daerah Kalibagor menjadi ramai dan dipenuhi berbagai tempat industri.'
                      'Pabrik Gula Kalibagor berada di tepi jalan utama Sokaraja, Banyumas dan pabrik ini berdekatan langsung dengan kompleks perumahan Belanda masa dulu yang sudah tidak berpenghuni selama bertahun-tahun.'
                      'Karena sudah tidak berpenghuni selama bertahun-tahun akhirnya membuat berbagai tumbuhan liar menghiasi kompleks bangunan ini.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Tombol Kunjungi dengan Animasi
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan kode tindakan di sini!
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 241, 0, 80),
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    child: Text('Kunjungi Sekarang', style: TextStyle(color: Colors.black),),
                  ),
                  SizedBox(height: 20), // Tambahkan jarak di bawah tombol
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

