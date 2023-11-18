import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(DiceRollerApp());
}

class DiceRollerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
      debugShowCheckedModeBanner: false,
      home: DiceRoller(),
    );
  }
}

class DiceRoller extends StatefulWidget {
  @override
  _DiceRollerState createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int diceResult = 1;

  void rollDice() {
    setState(() {
      diceResult = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lançador de Dados'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/dice_$diceResult.png', width: 200, height: 200),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: rollDice,
              child: Text('Lançar Dado'),
            ),
          ],
        ),
      ),
    );
  }
}
