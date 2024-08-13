import 'package:flutter/material.dart';

class buttonWidget extends StatefulWidget {
  const buttonWidget({super.key});

  @override
  State<buttonWidget> createState() => _buttonWidgetState();
}

class _buttonWidgetState extends State<buttonWidget> {
  int number = 0;

  void counterNumber() {
    setState(() {
      number++;
      print('number ke $number');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Button Widget'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Number ke-$number',
                    style: TextStyle(
                      fontSize: number == 50 ? 50 : 24,
                      fontWeight: FontWeight.bold,
                      color: number == 50 ? Colors.red : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: counterNumber,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Counter',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      number = 0 ;
                    });
                  },
                      child: Text('button reset'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
