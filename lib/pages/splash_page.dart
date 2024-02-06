import 'dart:async';

import 'package:chess/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () {
      // Navigate to the homepage
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 300),
            SizedBox(
              width: 200,
              height: 220,
              child: Image.asset(
                'assets/images/chess-wallpaper.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "CHESS",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 46,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
