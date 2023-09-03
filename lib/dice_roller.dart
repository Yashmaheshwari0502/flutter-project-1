import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentImage = 2;

  void rolldie() {
    setState(() {
      currentImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Image.asset(
            'assets/images/dice-$currentImage.png',
            width: 200,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rolldie,
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            child: Text(
              "Roll Die",
              style: TextStyle(fontSize: 28),
            ))
      ],
    );
  }
}
