import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'loginSC.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _locales = [
    {"nombre": "Doggy Style", "desc": "Descripcion corta del local."},
    {"Benito Martinez", "Descripcion corta del local."},
    {"Le Bodoque", "Descripcion corta del local."},
    {"Guaripolo's foods", "Descripcion corta del local."},
    {"TopTopTop", "Descripcion corta del local."},
    {"Hermoso y desconocido", "Descripcion corta del local."},
    {"Tulio y otros", "Descripcion corta del local."},
    {"La sombra", "Descripcion corta del local."},
    {"Corchetis", "Descripcion corta del local."},
    {"Estamos al aire", "Descripcion corta del local."},
  ];

  CameraPosition _initialPosition =
      CameraPosition(target: LatLng(-33.5995760, -70.6728508), zoom: 18);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              GoogleMap(
                initialCameraPosition: _initialPosition,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
