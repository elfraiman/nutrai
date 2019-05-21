import 'package:flutter/material.dart';

class WorkoutCard extends StatelessWidget {
  var textProp = 'default';
  var imageRef = '';
  var heroTag = '';
  var titleProp = '';

  WorkoutCard(
      {@required this.textProp,
      @required this.imageRef,
      @required this.heroTag,
      @required this.titleProp});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 300,
        maxWidth: 300,
        minHeight: 250,
        maxHeight: 300
      ),
      child: Card(
        elevation: 5,
        semanticContainer: true,
        margin: EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
                tag: heroTag,
                child: Image.asset(imageRef)),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Text(
                titleProp,
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 6, left: 16, right: 16),
              child: Text(textProp, style: TextStyle(fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }
}
