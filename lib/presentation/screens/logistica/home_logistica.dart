import 'package:flutter/material.dart';

class HomeLogistica extends StatelessWidget {

  static const String name = 'home_logistica';

  const HomeLogistica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("logistica"),
      ),
    );
  }
}