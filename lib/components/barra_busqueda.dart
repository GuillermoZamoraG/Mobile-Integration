import 'package:flutter/material.dart';

class BarraBusqueda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List _locales = ['Mario Hugo', 'Benito Martinez', 'Le Bodoque'];

    return Column(children: [
      ListView.builder(
          itemCount: _locales.length,
          itemBuilder: (context, position) {
            return _locales[1];
          }),
    ]);
  }
}
