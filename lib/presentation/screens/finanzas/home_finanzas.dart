import 'package:flutter/material.dart';

class HomeFinanzas extends StatelessWidget {

  static const String name = 'home_finanzas';

  const HomeFinanzas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Finanzas"),
      ),
    );
  }
}