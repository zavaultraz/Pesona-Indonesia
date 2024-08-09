import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Image.asset('assets/images/panorama.jpg'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Mountain Train Tour',
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
                            'Sukabumi',
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
                            'Rp 400.000',
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
                            '4.3',
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
                  'Mountain Tour di Sukabumi adalah pengalaman mendaki gunung yang tak terlupakan. Peserta akan menikmati pemandangan alam yang indah, udara pegunungan yang segar, serta petualangan berkemah di alam terbuka. Cocok untuk pecinta alam dan pencari petualangan, acara ini menawarkan keseruan dan ketenangan sekaligus.',
                  style: TextStyle(fontWeight: FontWeight.w400),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset('assets/images/train.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                          borderRadius:BorderRadius.circular(25),
                          child: Image.asset('assets/images/panorama.jpg'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
