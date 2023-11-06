import 'package:flutter/material.dart';

class HomeVentas extends StatelessWidget {

  static const String name = 'home_ventas';

  const HomeVentas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Ventas"),
      ),
    );
  }
}