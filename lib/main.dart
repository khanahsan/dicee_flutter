import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceButton = 2;
  int rightDiceButton = 1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                diceeChangeNuber();
                print('Left Dice Pressed $rightDiceButton');

              },
              child: Image.asset('images/dice$leftDiceButton.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                diceeChangeNuber();
                print('Right Dice Pressed $leftDiceButton');
              },
              child: Image.asset('images/dice$rightDiceButton.png'),
            ),
          ),
        ],
      ),
    );
  }
  void diceeChangeNuber(){
   setState(() {
     rightDiceButton = Random().nextInt(6) + 1;
     leftDiceButton = Random().nextInt(6) + 1;
   });
  }

}


