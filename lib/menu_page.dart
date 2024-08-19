import 'package:flutter/material.dart';
import 'package:pesona_indonesia/component/tombol.dart';
import 'package:pesona_indonesia/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        title: Text(
          'Surabaya',
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: primaryColor,borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start  ,
                  children: [
                    Text('Get 10% Promo',style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 20,
                    ),

                    //redeem button 
                    Mybutton(text: 'Redeem', onTap: (){},
                    ),
                  ],
                ),
                //image
                Image.asset('assets/images/sushi.png',height: 100,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
