import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dice(),
    ),
  );
}

class Dice extends StatefulWidget {
  Dice({Key key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int solDice = 1;
  int onDice = 1;

  rollDices() {
    setState(() {
      solDice = Random().nextInt(6) + 1;
      onDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Тапшырма 05'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 53, 120),
      ),
      backgroundColor: Color.fromARGB(255, 255, 53, 120),
      body: Center(
        child: Row(children: [
          Container(
            height: 170.0,
            width: 175.0,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 255, 53, 120))),
              onPressed: () {
                rollDices();
              },
              child: Image.asset('images/$solDice.png'),
            ),
          ),
          Container(
            height: 170.0,
            width: 175.0,
            child: ElevatedButton(
              onPressed: () {
                rollDices();
              },
              child: Image.asset('images/$onDice.png'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 255, 53, 120))),
            ),
          )
        ]),
      ),
    );
  }
}
