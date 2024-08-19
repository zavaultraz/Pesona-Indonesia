import 'package:flutter/material.dart';
import 'package:pesona_indonesia/button.dart';
import 'package:pesona_indonesia/design.dart';
import 'package:pesona_indonesia/detail_screen.dart';
import 'package:pesona_indonesia/home.dart';
import 'package:pesona_indonesia/intro_page.dart';
import 'package:pesona_indonesia/main_screen.dart';
import 'package:pesona_indonesia/menu_page.dart';
import 'package:pesona_indonesia/pesona.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroPage(),
      routes: {
        '/intropage':(context)=> const IntroPage(),
        '/menupage':(context)=> const MenuPage(),
      },

    );
  }
}



