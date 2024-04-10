import 'package:flutter/material.dart';
// import 'package:telebirr/styled_text.dart';
import 'package:telebirr/dice_roller.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.c1, this.c2, {super.key});
  final Color c1;
  final Color c2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
          colors: [c1, c2],
          // begin: Alignment.topLeft,
          // end: Alignment.bottomRight,
        ),
      ),
      child:  const Center(
        child:  DiceRoller(),
      ),
    );
  }
}
