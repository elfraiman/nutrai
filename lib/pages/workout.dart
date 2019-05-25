import 'package:flutter/material.dart';
import '../custom-widgets/mini_nutrai_card.dart';

class Workout extends StatefulWidget {
  @override
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(children: <Widget>[
              Container(
                height: 280,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/gym-workout-stock.png'), alignment: AlignmentDirectional(1.0, 1.0)),
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadiusDirectional.vertical(
                        bottom: Radius.circular(16))),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text("Workout",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontFamily: 'MarkerFont')),
              )),
            ]),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('My Routines', style: TextStyle(fontSize: 20)),
                        FlatButton(
                          onPressed: () {
                            print('Clicked on create routine!');
                          },
                            splashColor: Theme.of(context).accentColor,
                            child: Text(
                          'Create',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ))
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        MiniNutraiCard(
                            titleProp: 'Phul',
                            textProp: 'Power Hypertrophy Upper Lower',
                            imageRef: 'assets/deadlift.jpg',
                            heroTag: 'phulHero3'),
                        MiniNutraiCard(
                          titleProp: 'Custom Workout',
                          textProp: 'My Custom Plan!',
                          imageRef: 'assets/barbell-clip.jpg',
                          heroTag: 'phulHero2',
                        ),
                        MiniNutraiCard(
                          titleProp: 'Custom Workout',
                          textProp: 'My Custom Plan!',
                          imageRef: 'assets/barbell-clip.jpg',
                          heroTag: 'phulHero1',
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                    child: Row(
                      children: <Widget>[
                        Text('Sample Routines', style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        MiniNutraiCard(
                            titleProp: 'Phul',
                            textProp: 'Power Hypertrophy Upper Lower',
                            imageRef: 'assets/deadlift.jpg',
                            heroTag: 'phulHero5'),
                        MiniNutraiCard(
                          titleProp: 'Custom Workout',
                          textProp: 'My Custom Plan!',
                          imageRef: 'assets/barbell-clip.jpg',
                          heroTag: 'phulHero6',
                        ),
                        MiniNutraiCard(
                          titleProp: 'Custom Workout',
                          textProp: 'My Custom Plan!',
                          imageRef: 'assets/barbell-clip.jpg',
                          heroTag: 'phulHero0',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
