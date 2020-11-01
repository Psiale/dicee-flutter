import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.amberAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Row(
            children: [
              diceBuilder(randomDieNumber()),
              diceBuilder(randomDieNumber()),
            ],
          ),
        ),
      ),
    );
  }

  Widget diceBuilder(int dieNumber) {
    return Expanded(
      child: FlatButton(
        child: Image(
          image: AssetImage('./images/dice$dieNumber.png'),
        ),
        onPressed: () {
          setState(() {
            dieNumber = randomDieNumber();
          });
        },
      ),
    );
  }

  int randomDieNumber() {
    final _random = new Random();
    final _min = 1;
    final _max = 6;
    return _min + _random.nextInt(_max - _min);
  }
}
