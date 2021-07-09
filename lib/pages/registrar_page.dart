import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'home-screen.dart';

class Registrar extends StatelessWidget {
  late String correo, password, nombre;

  Map<String, String> usuarios = {
    'ga.zamora@gmail.com': 'contraseña',
    'maikol@gmail.com': 'contra123',
    '1': '123',
    'a.cortes@profesor.duoc.cl': 'cortes',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Registrar'),
          backgroundColor: Colors.green,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          color: Colors.purple.shade50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Formulario de Registro',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Expanded(child: Text('Correo: ')),
                  Expanded(child: TextField(
                    onChanged: (value) {
                      correo = value;
                    },
                  ))
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: Text('Contraseña: ')),
                  Expanded(
                      child: TextField(
                    obscureText: true,
                    onChanged: (value) {
                      password = value;
                    },
                  ))
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: Text('Repetir Contraseña: ')),
                  Expanded(
                      child: TextField(
                    obscureText: true,
                    onChanged: (value) {
                      password = value;
                    },
                  ))
                ],
              ),
              SizedBox(height: 40),
              ElevatedButton(
                  child: Text('Registrar'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {
                    usuarios[correo] = password;
                    print(usuarios);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  })
            ],
          ),
        ));
  }
}
