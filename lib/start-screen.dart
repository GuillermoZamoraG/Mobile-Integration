import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8335E8),
      body: Center(
        child: Image(
          image: AssetImage("assets/images/splash_icon.png"),
        ),
      ),
    );
  }
}
