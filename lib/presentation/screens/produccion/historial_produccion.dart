import 'package:flutter/material.dart';

class HistorialProduccion extends StatelessWidget {

  static const String name = 'historial_produccion';
  const HistorialProduccion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Historial de produccion"),
      ),

    );
  }
}