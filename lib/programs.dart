import 'package:flutter/material.dart';
import 'package:nutrai/custom-widgets/workout_card.dart';
import 'programs-pages/program-template.dart';
import 'package:nutrai/custom-widgets/mini_workout_card.dart';


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
                      onCardTap(context, ProgramTemplate('phul', 'assets/deadlift.jpg', 'phulImgHero', 'P.H.U.L')),
                  child: WorkoutCard(
                    textProp:
                        'Power Hypertrophy Upper Lower (P.H.U.L.) Workout',
                    imageRef: 'assets/deadlift.jpg',
                    heroTag: 'phulImgHero',
                    titleProp: 'Strength',
                  ),
                ),
                GestureDetector(
                  onTap: () => onCardTap(
                      context, ProgramTemplate('fatDestroyer', 'assets/outdoor-barbell.jpg', 'fatDestImgHero', 'Fat Destroyer')),
                  child: WorkoutCard(
                      textProp:
                          '12 Week Fat Destroyer: Complete Fat Loss Workout',
                      imageRef: 'assets/outdoor-barbell.jpg',
                      heroTag: 'fatDestImgHero',
                      titleProp: 'Fat Burn'),
                ),
                GestureDetector(
                  onTap: () => onCardTap(context, ProgramTemplate('tenWeekMass', 'assets/barbell-wide.jpg', 'tenWeekMassImgHero', '10 Week Mass')),
                  child: WorkoutCard(
                    textProp: '10 Week Mass Building Program',
                    imageRef: 'assets/barbell-wide.jpg',
                    heroTag: 'tenWeekMassImgHero',
                    titleProp: 'Mass',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16),
            child: Row(
              children: <Widget>[
                Text(
                  'At Home',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                MiniWorkoutCard(
                  textProp:
                  'Abs Workout For Women: 8 Weeks To A Flatter Stomach',
                  imageRef: 'assets/girl-yoga-stretch.jpg',
                  heroTag: 'flatterStomachImgHero',
                  titleProp: 'Fat Burn',
                ),
                MiniWorkoutCard(
                    textProp: "12 Week Women's Bikini Prep Workout Program",
                    imageRef: 'assets/strech.jpg',
                    heroTag: 'bikiniPrepImgHero',
                    titleProp: 'Fat Burn'),
                MiniWorkoutCard(
                  textProp: 'The Metabolic Circuit',
                  imageRef: 'assets/blond-healthy-drinking.jpg',
                  heroTag: 'metabolicCircImgHero',
                  titleProp: 'Fat Burn',
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
                  heroTag: 'test1',
                  titleProp: 'Fat Burn',
                ),
                WorkoutCard(
                    textProp: "12 Week Women's Bikini Prep Workout Program",
                    imageRef: 'assets/beach-blond.jpg',
                    heroTag: 'test2',
                    titleProp: 'Fat Burn'),
                WorkoutCard(
                  textProp: 'The Metabolic Circuit',
                  imageRef: 'assets/blond-healthy-drinking.jpg',
                  heroTag: 'test4',
                  titleProp: 'Fat Burn',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16),
            child: Row(
              children: <Widget>[
                Text(
                  'Fat Loss',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                MiniWorkoutCard(
                  textProp:
                  'Abs Workout For Women: 8 Weeks To A Flatter Stomach',
                  imageRef: 'assets/tie-shoe.jpg',
                  heroTag: 'test5',
                  titleProp: 'Fat Burn',
                ),
                MiniWorkoutCard(
                    textProp: "12 Week Women's Bikini Prep Workout Program",
                    imageRef: 'assets/girl-dumbell.jpg',
                    heroTag: 'test6',
                    titleProp: 'Fat Burn'),
                MiniWorkoutCard(
                  textProp: 'The Metabolic Circuit',
                  imageRef: 'assets/blond-healthy-drinking.jpg',
                  heroTag: 'test7',
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
