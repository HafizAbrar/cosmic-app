
import 'package:demo_figma_design/View/Authentication_Screens/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import '../Home_Screen/home.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand, // Make the Stack expand to fill the Scaffold
        children: <Widget>[
          // 1. Background Image
          Image.asset(
            'assets/Splash_Image.png', // Your background image asset
            fit: BoxFit.cover, // This will cover the entire screen
          ),
          // 2. Centered Logo
          Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  // a. CircularProgressIndicator
                  const SizedBox.expand(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.cyanAccent),
                      strokeWidth: 6.0,
                    ),
                  ),
                  // b. Logo Container
                  Container(
                    width: 180,
                    height: 180,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/logo.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(padding: EdgeInsets.only(
              bottom: 100.0,
              left: 0.05,
              right: 0.05,
            ),
              child: Text('Sabri_Code_Studio',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,

                ),),
            ),
          )
        ],
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Main Screen'),
      ),
    );
  }
}