import 'package:flutter/material.dart';
import 'vista/bienvenida.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora de Intervalos',
      home: PantallaBienvenida(),
    );
  }
}
