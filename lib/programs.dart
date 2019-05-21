import 'package:flutter/material.dart';
import 'package:nutrai/custom-widgets/workout_card.dart';
import 'programs-pages/phul.dart';
import 'programs-pages/fat-destroyer.dart';



class Programs extends StatelessWidget {
  onCardTap(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(6.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16),
            child: Row(
              children: <Widget>[
                Text(
                  'Men',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () =>
                      onCardTap(context, PhulPlan('assets/deadlift.jpg')),
                  child: WorkoutCard(
                    textProp:
                        'Power Hypertrophy Upper Lower (P.H.U.L.) Workout',
                    imageRef: 'assets/deadlift.jpg',
                    heroTag: 'phulImgHero',
                    titleProp: 'Muscle',
                  ),
                ),
                GestureDetector(
                  onTap: () => onCardTap(
                      context, FatDestroyerPlan('assets/girl-dumbell.jpg')),
                  child: WorkoutCard(
                      textProp:
                          '12 Week Fat Destroyer: Complete Fat Loss Workout',
                      imageRef: 'assets/girl-dumbell.jpg',
                      heroTag: 'fatdestroyerImgHero',
                      titleProp: 'Fat Burn'),
                ),
                WorkoutCard(
                  textProp: '10 Week Mass Building Program',
                  imageRef: 'assets/barbell-wide.jpg',
                  heroTag: 'tenWeekMassImgHero',
                  titleProp: 'Mass',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16),
            child: Row(
              children: <Widget>[
                Text(
                  'Women',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                WorkoutCard(
                  textProp:
                      'Abs Workout For Women: 8 Weeks To A Flatter Stomach',
                  imageRef: 'assets/girl-beach-smile.jpg',
                  heroTag: 'flatterStomachImgHero',
                  titleProp: 'Fat Burn',
                ),
                WorkoutCard(
                    textProp: "12 Week Women's Bikini Prep Workout Program",
                    imageRef: 'assets/beach-blond.jpg',
                    heroTag: 'bikiniPrepImgHero',
                    titleProp: 'Fat Burn'),
                WorkoutCard(
                  textProp: 'The Metabolic Circuit',
                  imageRef: 'assets/blond-healthy-drinking.jpg',
                  heroTag: 'metabolicCircImgHero',
                  titleProp: 'Fat Burn',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
