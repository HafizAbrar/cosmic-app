import 'package:flutter/material.dart';
import 'View/Splash_Screen/Splash_Screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cosmic',

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.transparent,
        scaffoldBackgroundColor: Colors.transparent,
      ),

      home:const SplashScreen() ,
    );
  }
}

