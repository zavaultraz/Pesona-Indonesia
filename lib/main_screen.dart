import 'package:flutter/material.dart';
import 'package:pesona_indonesia/detail_screen.dart';
import 'package:pesona_indonesia/model/data_wisata.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Main'),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: wisataTempat.length, // Pastikan jumlah item ditampilkan sesuai dengan panjang list
            itemBuilder: (BuildContext context, int index) {
              final TempatWisata tempatWisata = wisataTempat[index];
              return InkWell(
                onTap: () {
                  print('${tempatWisata.nama} card clicked');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(tempatWisata: tempatWisata,),
                  ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 100,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  tempatWisata.gambar,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    tempatWisata.nama,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    tempatWisata.deskripsi,
                                    maxLines: 2, // Membatasi teks hanya dua baris
                                    overflow: TextOverflow.ellipsis, // Menambahkan ellipsis jika teks terlalu panjang
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
