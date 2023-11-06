import 'package:flutter/material.dart';

class CustomBotonWidget extends StatelessWidget {

  final String text;
  final Function onPressed;

  const CustomBotonWidget({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthQuery = MediaQuery.of(context).size.width;
    return ElevatedButton(
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(2),
        shape: const MaterialStatePropertyAll(StadiumBorder()),
        backgroundColor: MaterialStateProperty.all(Colors.orange)

      ),
      onPressed: () => onPressed(), 
      child: SizedBox(
        width: widthQuery * 0.3,
        height: 55,
        child: Center(
          child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 17),),
        ),
      )
    );
  }
}