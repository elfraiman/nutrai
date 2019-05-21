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
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.fitness_center),
              ),
              Text(goal,
                  style: TextStyle(fontSize: 13))
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.sentiment_satisfied),
              ),
              Text(difficulty,
                  style: TextStyle(fontSize: 13))
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.watch_later),
              ),
              Text(period,
                  style: TextStyle(fontSize: 13))
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.watch),
              ),
              Text(exerciseTime,
                  style: TextStyle(fontSize: 13))
            ],
          ),
        ],
      ),
    );
  }
}
