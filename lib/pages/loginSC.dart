import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/home-screen.dart';
import 'package:flutter_application_1/pages/registrar_page.dart';
import 'package:flutter_application_1/main.dart';

import 'home-page.dart';

class LoginSC extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.green));

    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Center(
            child: SingleChildScrollView(
                child: Column(
          children: [
            Stack(
              children: [
                Image(
                    width: double.infinity,
                    height: 500.0,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://dam.cocinafacil.com.mx/wp-content/uploads/2020/04/comida-china-tipica.jpg')),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                )
              ],
            ),
            Transform.translate(
                offset: Offset(0.0, -160.0),
                child: Container(
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                          child: Column(
                        children: [
                          Text("Bienvenido!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0)),
                          Text("Inicie sesión con su cuenta",
                              style: TextStyle(
                                  color: Theme.of(context).disabledColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.0)),
                          _emailInput(),
                          _passwordInput(),
                          _loginButton(context),
                          Container(
                            margin: EdgeInsets.only(top: 30.0),
                            child: Text("¿Olvidaste la contraseña?",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0)),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("¿No tienes cuenta?",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0)),
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Registrar(),
                                            ),
                                          );
                                        },
                                        child: Text('Crea una aquí',
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15.0))))
                              ],
                            ),
                          )
                        ],
                      ))),
                ))
          ],
        ))));
  }

  Widget _emailInput() {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Correo electronico',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }

  Widget _passwordInput() {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      padding: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        controller: _passwordController,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Contraseña',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
        width: 150.0,
        height: 40.0,
        margin: EdgeInsets.only(top: 30.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.green, // background
            onPrimary: Colors.white, // foreground
          ),
          onPressed: () {
            String usuario = _emailController.text;
            String contrasenna = _passwordController.text;

            if (Registrar().usuarios[usuario] == contrasenna) {
              print('login correcto');
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            } else {
              print('datos erroneos');
            }
          },
          child: Text('Iniciar sesión'),
        ));
  }
}
