import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

// Stateful Widget manage internal data State and the Widget is re-rendered (UI
// is updated) when change it. Use whenever the UI must be refreshed
// State Class
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// Private Class -> '_'
// Widget Class
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    // Function that re-execute build() after the variable was modified,
    // otherwise changes made would not be shown
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; // 1 <> 6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        // Widget that create a space
        const SizedBox(height: 10),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
