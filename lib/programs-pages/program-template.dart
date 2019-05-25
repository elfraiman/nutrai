import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../custom-widgets/program_title.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../custom-widgets/program_icon_data.dart';

class ProgramTemplate extends StatelessWidget {
  String image;
  String heroTag;
  String titleBar;
  String programDocumentName;
  String youtubeID;

  ProgramTemplate(
      this.programDocumentName, this.image, this.heroTag, this.titleBar);

  @override
  Widget build(BuildContext context) {
    var primaryDarkColor = Colors.black87;

    if (programDocumentName.isEmpty != null) {
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                StreamBuilder<DocumentSnapshot>(
                    stream: Firestore.instance
                        .collection('programs')
                        .document(programDocumentName)
                        .snapshots(),
                    builder: (BuildContext context,
                        AsyncSnapshot<DocumentSnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return new Text('Error: ${snapshot.error}');
                      } else if (snapshot.connectionState ==
                          ConnectionState.waiting) {
                        return Column(
                          children: <Widget>[
                            Center(
                              child: CircularProgressIndicator(),
                            ),
                          ],
                        );
                      } else {
                        // Act on DATA!
                        var doc = snapshot.data;
                        if (doc['youtubeID']?.isEmpty != null) {
                          youtubeID = doc['youtubeID'];
                        }
                        return Column(
                          children: <Widget>[
                            Stack(children: <Widget>[
                              // Picture
                              Hero(
                                tag: heroTag,
                                child: FadeInImage(
                                    placeholder: AssetImage('pic.jpeg'),
                                    image: AssetImage(image),
                                    fit: BoxFit.cover,
                                height: 310),
                              ),
                              // Back button
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 28.0, right: 318),
                                child: FlatButton.icon(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.arrow_back_ios,
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.85),
                                        size: 30.0),
                                    label: Text('')),
                              ),
                              // Days per week text
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 220.0, left: 8, right: 26),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    FlatButton.icon(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.timelapse,
                                          size: 18,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 0.75),
                                        ),
                                        // Days per week text
                                        label: Text(
                                          doc['daysPerWeek'],
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.75)),
                                        )),
                                  ],
                                ),
                              ),

                              // Card + Padding
                              Padding(
                                padding: const EdgeInsets.only(top: 270.0),
                                child: Card(
                                  margin: EdgeInsets.all(0),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0))),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Column(
                                      children: <Widget>[
                                        // Program Title Container
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            ProgramTitleContainer(
                                              programGoal: doc['goal'],
                                              programTitle: doc['title'],
                                              publisher: doc['publisher'],
                                            ),
                                            SizedBox(
                                              width: 115,
                                              child: RaisedButton(
                                                color: Theme.of(context).primaryColor,
                                                elevation: 8,
                                                child: Text('Start', style: TextStyle(color: Colors.white),),
                                                onPressed: () {
                                                  print('Start workout clicked');
                                                },
                                              ),
                                            ),
                                          ],
                                        ),

                                        // Icons for info
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 16.0),
                                          child: ProgramIconBar(
                                              goal: doc['goal'],
                                              difficulty: doc['difficulty'],
                                              exerciseTime: doc['exerciseTime'],
                                              period: doc['period']),
                                        ),
                                        Divider(),
                                        // Code for youtube video
                                        youtubeID?.isEmpty != null
                                            ? YoutubePlayer(
                                                context: context,
                                                videoId: youtubeID,
                                                autoPlay: false,
                                                showVideoProgressIndicator:
                                                    true,
                                                videoProgressIndicatorColor:
                                                    Colors.deepPurpleAccent,
                                                progressColors: ProgressColors(
                                                  playedColor:
                                                      Colors.deepPurple,
                                                  handleColor:
                                                      Colors.deepPurpleAccent,
                                                ),
                                              )
                                            : new Container(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 18.0),
                                          child: Container(
                                            child: Text(
                                              doc['intro'],
                                              overflow: TextOverflow.visible,
                                              style: TextStyle(
                                                  color: primaryDarkColor,
                                                  height: 1.3),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Html(
                                            data: "${doc['textContent']}",
                                          ),
                                        ),
                                        Center(
                                          child: SizedBox(
                                            width: 500,
                                            child: RaisedButton(
                                              color: Theme.of(context).primaryColor,
                                              elevation: 8,
                                              child: Text('Start', style: TextStyle(color: Colors.white),),
                                              onPressed: () {
                                                print('Start workout clicked');
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        );
                      }
                    }),
              ],
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
