import 'package:flutter/material.dart';

class ProgramIconBar extends StatelessWidget {
  String goal;
  String difficulty;
  String period;
  String exerciseTime;

  ProgramIconBar(
      {@required this.goal, this.difficulty, this.period, this.exerciseTime});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(Icons.fitness_center, color: Colors.black54,),
            ),
            Text(goal,
                style: TextStyle(fontSize: 13))
          ],
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(Icons.sentiment_satisfied, color: Colors.black54),
            ),
            Text(difficulty,
                style: TextStyle(fontSize: 13))
          ],
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(Icons.watch_later, color: Colors.black54),
            ),
            Text(period,
                style: TextStyle(fontSize: 13))
          ],
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(Icons.watch, color: Colors.black54),
            ),
            Text(exerciseTime,
                style: TextStyle(fontSize: 13))
          ],
        ),
      ],
    );
  }
}
