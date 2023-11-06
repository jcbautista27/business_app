import 'package:flutter/material.dart';

class HomeAlmacen extends StatelessWidget {

  static const String name = 'home_almacen';

  const HomeAlmacen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Almacén"),
      ),
    );
  }
}