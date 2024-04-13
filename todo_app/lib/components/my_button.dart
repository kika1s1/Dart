import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
   MyButton({super.key, required this.text, required this.onPressed});
  VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      elevation: 0,
      child:   Text(text),
    );
  }
}
