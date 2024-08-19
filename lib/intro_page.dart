import 'package:flutter/material.dart';
import 'package:pesona_indonesia/component/tombol.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(225, 138, 60, 55),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 25.0,
              ),
              //shop name
              Text(
                'Sushi Ok',
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              const SizedBox(height: 25.0),
              Padding(
                padding: EdgeInsets.all(50.0),
                child: Image.asset('assets/images/sushi.png'),
              ),
              const SizedBox(
                height: 3.0,
              ),
              Text('THE TASTE OF JAPAN FOOD',style: TextStyle(fontSize: 44,color: Colors.white),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text('Rasakan sensasi makanan jepang dengan harga terjangkau dan dibuat oleh bahan pilihan',style: TextStyle(color: Colors.grey[200],height: 2),
              ),
              Mybutton(text: 'Get Start',
              onTap: (){
              Navigator.pushNamed(context, '/menupage');
              },
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
