import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  _DiceRollerState createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int dicenumber = 1;

  void rollDice() {
    setState(() {
      dicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/dice-$dicenumber.png', width: 200, height: 200),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {
            rollDice();
          },
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}