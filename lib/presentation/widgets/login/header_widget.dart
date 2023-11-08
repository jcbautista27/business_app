import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Bienvenido", style: textStyle.titleLarge?.copyWith(fontSize: 30, color: Colors.orange, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10,),
          Text("Inicia sesión para continuar...", style: textStyle.bodyLarge,)
        ],
      ),
    );
  }
}