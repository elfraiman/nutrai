import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../custom-widgets/program_title.dart';

class PhulPlan extends StatelessWidget {
  var image = '';

  PhulPlan(this.image);

  @override
  Widget build(BuildContext context) {
    var accentColor = Theme.of(context).accentColor;
    var primaryDarkColor = Colors.black87;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('P.H.U.L'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ProgramTitleContainer(
                  programGoal: 'Strength',
                  programTitle: 'Power Hypertrophy Upperlower',
                  publisher: 'Brandon Campbell',
                ),
                Hero(
                  tag: 'phulImgHero',
                  child: Image.asset(image, fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(Icons.fitness_center),
                          ),
                          Text('Muscle', style: TextStyle(fontSize: 13))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(Icons.sentiment_satisfied),
                          ),
                          Text('Intermediate', style: TextStyle(fontSize: 13))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(Icons.watch_later),
                          ),
                          Text('12 weeks', style: TextStyle(fontSize: 13))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(Icons.watch),
                          ),
                          Text('45-60 min', style: TextStyle(fontSize: 13))
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(),
                /* Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: YoutubePlayer(
                    context: context,
                    videoId: "HjaYNano8DA",
                    autoPlay: false,
                    showVideoProgressIndicator: true,
                    videoProgressIndicatorColor: Colors.deepPurpleAccent,
                    progressColors: ProgressColors(
                      playedColor: Colors.deepPurple,
                      handleColor: Colors.deepPurpleAccent,
                    ),
                  ),
                ), */
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Container(
                    child: Text(
                      'The PHUL workout is based around the basic principles of strength and size.'
                      ' This 4 day program will allow you to maximize results on both fronts in an easy adaptable routine built off the following principles:',
                      overflow: TextOverflow.visible,
                      style: TextStyle(color: primaryDarkColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: RichText(
                    text: TextSpan(
                        text: 'Frequency. ',
                        style: TextStyle(fontSize: 21, color: accentColor),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'Studies have shown muscle protein synthesis (MPS) to be elevated for up to 48 hours after training.'
                                  ' That would make it ideal for you to hit each muscle more frequently than a typical once per week split.'
                                  ' The PHUL program is designed to hit each muscle group twice within a week.',
                              style: TextStyle(
                                  fontSize: 14, color: primaryDarkColor)),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: RichText(
                    text: TextSpan(
                        text: 'Compounds. ',
                        style: TextStyle(fontSize: 21, color: accentColor),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'The PHUL program focuses on the big compound movements for optimal progression. While isolation movements are included in this program as well, the main goal is to increase performance on the main lifts, as well as pack on pounds of muscle.',
                              style: TextStyle(
                                  fontSize: 14, color: primaryDarkColor)),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: RichText(
                    text: TextSpan(
                        text: 'Power. ',
                        style: TextStyle(fontSize: 21, color: accentColor),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  "This program uses 2 of it's 4 working days to focus on pure strength training. The key to getting stronger and bigger is to utilize progressive overload and time under tension. These 2 days will see that you'll be able to use more weight on your hypertrophy days.",
                              style: TextStyle(
                                  fontSize: 14, color: primaryDarkColor)),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: RichText(
                    text: TextSpan(
                        text: 'Hypertrophy. ',
                        style: TextStyle(fontSize: 21, color: accentColor),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  "In addition to 2 power days, your other 2 days on the PHUL program will focus on hypertrophy (bodybuilding) style training. This way, not only will you be seeing strength increases but you'll be building size as well.",
                              style: TextStyle(
                                  fontSize: 14, color: primaryDarkColor)),
                        ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
