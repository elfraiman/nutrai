import 'package:flutter/material.dart';

class Workout extends StatefulWidget {
  @override
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
            height: 280,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 106.0),
            child: FadeInImage(placeholder: AssetImage('assets/pic.jpg'), image: AssetImage('assets/gym-workout-stock.png')),
          ),
          Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text("Workout",
                    style: TextStyle(fontSize: 35, color: Colors.white, fontFamily: 'MarkerFont')),
              ))
        ]),
      ),
    );
  }
}
