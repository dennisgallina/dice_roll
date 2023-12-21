import 'package:flutter/material.dart';
import 'package:dice_roll/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // Constructor that accept parameters and modify the attributes
  const GradientContainer({super.key, required this.colors});

  // Constructor that don't accept parameters, but modify the attributes
  const GradientContainer.purple({super.key})
      : colors = const [Colors.deepPurple, Colors.indigo];

  // 'Final' because the variables will be modify only from the constructor
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
