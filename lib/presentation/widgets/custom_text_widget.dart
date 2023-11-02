
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {

  final IconData icon;
  final String placeholder;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomTextWidget({Key? key, required this.icon, required this.placeholder, required this.keyboardType, required this.isPassword}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, 5),
            blurRadius: 5
          )
        ]
      ),
      child: TextField(
        autocorrect: false,
        keyboardType: keyboardType,
        obscureText: isPassword,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: placeholder
        ),
      ),
    );
  }
}