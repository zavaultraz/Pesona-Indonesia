import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text('Explore Destination',style: TextStyle(fontFamily: 'Nexa',fontWeight: FontWeight.w700,fontSize: 22.0),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('All',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16),
                            ),
                          ),
                      ),
                      Text('Popular'),
                      Text('River'),
                      Text('Mount'),
                      Text('New'),
                      Text('Promo'),
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
