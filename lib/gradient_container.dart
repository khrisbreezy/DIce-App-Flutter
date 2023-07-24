import 'package:flutter/material.dart';

import 'package:my_app/style_text.dart';
import 'package:my_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 255, 230, 0),
          Color.fromARGB(197, 255, 187, 0),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
