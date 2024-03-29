import 'package:flutter/material.dart';

class ProgramTitleContainer extends StatelessWidget {
  var programGoal = '';
  var programTitle = '';
  var publisher = '';

  ProgramTitleContainer({@required this.programGoal, @required this.programTitle, @required this.publisher});

  @override
  Widget build(BuildContext context) {
    var accentColor = Theme.of(context).accentColor;

    return Container(
      child: Container(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              children: <Widget>[
                Text(
                  programGoal,
                  style: TextStyle(color: accentColor, fontSize: 12),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: <Widget>[
                Text(programTitle,
                    style: TextStyle(fontSize: 21)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 18.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Published by ',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  publisher,
                  style: TextStyle(fontSize: 13, color: Colors.grey[400]),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
