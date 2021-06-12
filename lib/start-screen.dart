import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home-screen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _goToHome(context);

    return Scaffold(
      backgroundColor: Color(0xFF8335E8),
      body: Center(
        child: Image(
          image: AssetImage("assets/images/splash_icon.png"),
        ),
      ),
    );
  }

  void _goToHome(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return HomeScreen();
      }));
    });
  }
}
