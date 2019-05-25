import 'package:flutter/material.dart';

class RecepieCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: SizedBox(
        width: 310,
        height: 300,
        child: Card(
          semanticContainer: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: <Widget>[
              FadeInImage(
                  placeholder: AssetImage('assets/pic.jpg'),
                  image: AssetImage('assets/bowl.jpg')),
              // Bottom Text
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                child: Row(
                  children: <Widget>[
                    Text('Sub title', style: TextStyle(fontSize: 10))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6.0, left: 16.0, right: 16.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Title for dish',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
