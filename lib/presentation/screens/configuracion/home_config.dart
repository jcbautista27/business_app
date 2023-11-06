import 'package:flutter/material.dart';

class HomeConfig extends StatelessWidget {

  static const String name = 'home_config';

  const HomeConfig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Configuración"),
      ),
    );
  }
}