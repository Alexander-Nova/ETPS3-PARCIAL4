import 'package:flutter/material.dart';
import 'package:parcial4/app/ui/paginas/home/principal.dart';

void main() {
  runApp(Parcial4());
}

class Parcial4 extends StatelessWidget {
  // const Parcial4({Key? key}) : super(key: key);

  @override
  Widget build( context) {
    return MaterialApp(
      title: "Parcial 4",
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PrincipalPage(),
    );
  }
}