import 'package:flutter/material.dart';
import 'package:pesona_indonesia/model/data_wisata.dart';

class DetailScreen extends StatelessWidget {
  final TempatWisata tempatWisata;
  const DetailScreen({super.key, required this.tempatWisata});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(tempatWisata.gambar),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    tempatWisata.nama,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nexa',
                        fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.location_on_outlined),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              tempatWisata.lokasi,
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.monetization_on_outlined),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              tempatWisata.harga,
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              tempatWisata.rating,
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  'Deskripsi',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text(
                    tempatWisata.deskripsi,
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),
                    textAlign: TextAlign.justify,
                  ),
                ),
               Text('Gallery',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network(tempatWisata.urlGambar[0]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius:BorderRadius.circular(25),
                            child: Image.network(tempatWisata.urlGambar[1]),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
