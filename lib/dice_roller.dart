import 'package:flutter/material.dart';
import 'dart:math';


final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNumber = 1;

  void rollDice() {
    setState(() {
     diceNumber = randomizer.nextInt(6) + 1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceNumber.png',
          width: 150,
        ),
        const SizedBox(
          height: 15,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
