import 'package:flutter/material.dart';

class RecepieCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(
            maxWidth: 340
        ),
        child: Card(
          semanticContainer: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: <Widget>[
              Stack(children: <Widget>[
                FadeInImage(
                    placeholder: AssetImage('assets/pic.jpg'),
                    image: AssetImage('assets/bowl.jpg')),
                // The inner card
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 119.0, bottom: 16, right: 16, left: 16),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Container(
                          width: 300,
                          padding: EdgeInsets.all(16),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Title for dish',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text('Sub title'),
                              Text('Rating / Time to make / price')
                            ],
                          )),
                    ),
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
