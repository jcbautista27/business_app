import 'package:flutter/material.dart';

class HomeProcesos extends StatelessWidget {

  static const String name = 'home_procesos';

  const HomeProcesos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Procesos"),
      ),
    );
  }
}