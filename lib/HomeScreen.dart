import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int firstDice = Random().nextInt(6) + 1;
  int secondDice = Random().nextInt(6) + 1;

  void roll() {
    setState(() {
      firstDice = Random().nextInt(6) + 1;
      secondDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Roll The Dice")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.all(30),
                      child: Image(
                          image:
                              AssetImage("assets/images/dice$firstDice.png"))),
                  Image(image: AssetImage("assets/images/dice$secondDice.png")),
                ],
              ),
            ),
            RaisedButton(
              onPressed: roll,
              child: Text("Roll it"),
            )
          ],
        ),
      ),
    );
  }
}
