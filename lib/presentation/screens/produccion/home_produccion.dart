import 'package:flutter/material.dart';

class HomeProduccion extends StatelessWidget {

  static const String name = 'home_produccion';

  const HomeProduccion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Producción"),
      ),
    );
  }
}