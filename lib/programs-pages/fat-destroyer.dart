import 'package:flutter/material.dart';
import '../custom-widgets/program_title.dart';

class FatDestroyerPlan extends StatelessWidget {
  var image = '';

  FatDestroyerPlan(@required this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fat Destroyer'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              ProgramTitleContainer(programGoal: 'Fat Loss', programTitle: 'Fat Destroyer', publisher: 'Max Riley'),
              Hero(
                tag: 'fatdestroyerImgHero',
                child: Image.asset(image),
              )
            ],
          ),
        ),
      ),
    );
  }
}
