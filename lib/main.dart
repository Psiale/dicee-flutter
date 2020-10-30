import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            children: [
              diceBuilder(),
              diceBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget diceBuilder() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image(
        image: AssetImage('./images/dice1.png'),
      ),
    ),
  );
}
