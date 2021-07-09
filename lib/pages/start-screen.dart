import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/loginSC.dart';

class StartScreen extends StatelessWidget {
  void initState() {}

  @override
  Widget build(BuildContext context) {
    _goToHome(context);

    return Scaffold(
      backgroundColor: Color(0xFF0C1918),
      body: Center(
        child: Image(
          image: AssetImage("assets/images/91x80_splash_icon_Uber.png"),
        ),
      ),
    );
  }

  void _goToHome(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return LoginSC();
      }));
    });
  }
}
