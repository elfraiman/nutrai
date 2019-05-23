import 'package:flutter/material.dart';

class Nutrition extends StatefulWidget {
  @override
  _Nutrition createState() => _Nutrition();
}

class _Nutrition extends State<Nutrition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: <Widget>[
          // Top Purple Container
          Stack(
            children: <Widget>[
              Container(
                height: 180,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Row(
                  children: <Widget>[
                    Text('Title')
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
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
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
