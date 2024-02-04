

import 'package:flutter/material.dart';
//import 'package:my_portfolio/appName.dart';
import 'package:my_portfolio/pages/home_page.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
 
  const MyApp({super.key,});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Upendra Raj Joshi',
      home: const HomePage(
        
      ),
    );
  }
}
