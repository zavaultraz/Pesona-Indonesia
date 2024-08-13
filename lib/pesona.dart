import 'package:flutter/material.dart';

void main() => runApp(TravelApp());

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DestinationScreen(),
    );
  }
}

class DestinationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Destinations'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search your destination',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Replace with the actual number of destinations
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/panorama.jpg'), // Replace with your image
                    title: Text('Mount Gede Pangrango'),
                    subtitle: Text('Sukabumi, Indonesia'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailScreen()),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: SingleChildScrollView(
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
      ),
    );
  }
}
