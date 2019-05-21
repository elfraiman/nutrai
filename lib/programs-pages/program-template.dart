import 'package:flutter/material.dart';

// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../custom-widgets/program_title.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../custom-widgets/program_icon_data.dart';

class ProgramTemplate extends StatelessWidget {
  String image;
  String heroTag;
  String titleBar;
  String programName;

  ProgramTemplate(@required this.programName, @required this.image, @required this.heroTag,
      @required this.titleBar);

  @override
  Widget build(BuildContext context) {
    var primaryDarkColor = Colors.black87;

    if ( programName.isEmpty != null  ) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(titleBar),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  StreamBuilder<DocumentSnapshot>(
                      stream: Firestore.instance
                          .collection('test')
                          .document(programName)
                          .snapshots(),
                      builder: (BuildContext context,
                          AsyncSnapshot<DocumentSnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return new Text('Error: ${snapshot.error}');
                        } else if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return new Text('Loading...');
                        } else {
                          // Act on DATA!
                          var doc = snapshot.data;

                          return Column(
                            children: <Widget>[
                              ProgramTitleContainer(
                                programGoal: doc['goal'],
                                programTitle: doc['title'],
                                publisher: doc['publisher'],
                              ),
                              Hero(
                                tag: heroTag,
                                child: Image.asset(image, fit: BoxFit.cover),
                              ),
                              ProgramIconBar(goal: doc['goal'],
                                  difficulty: doc['difficulty'],
                                  exerciseTime: doc['exerciseTime'],
                                  period: doc['period']),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: Container(
                                  child: Text(
                                    doc['intro'],
                                    overflow: TextOverflow.visible,
                                    style: TextStyle(color: primaryDarkColor),
                                  ),
                                ),
                              ),
                              Container(
                                child: Html(
                                  data: "${doc['textContent']}",
                                ),
                              )
                            ],
                          );
                        }
                      }),
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
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: Text('Error')),
      );
    }

  }
}
