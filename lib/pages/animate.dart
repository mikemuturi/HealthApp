import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mediaquirks/pages/registration_page.dart';
import 'package:mediaquirks/screens/login.dart';
import 'package:mediaquirks/screens/otp.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _logoVisible = true;

  @override
  void initState() {
    super.initState();

    // Start the animation
    _startAnimation();
  }

  void _startAnimation() {
    Timer(Duration(seconds: 3), () {
      setState(() {
        _logoVisible = false;
      });

      // Navigate to the login screen after three seconds
      _navigateToLogin();
    });
  }

  void _navigateToLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _logoVisible ? 1.0 : 0.0,
          duration: Duration(seconds: 1),
          child: Image.asset("lib/assets/img/logo-definitation.png"),
        ),
      ),
    );
  }
}




