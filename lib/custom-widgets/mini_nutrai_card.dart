import 'package:flutter/material.dart';

class MiniNutraiCard extends StatelessWidget {
  final textProp;
  final imageRef;
  final heroTag;
  final titleProp;

  MiniNutraiCard(
      {@required this.textProp,
        @required this.imageRef,
        @required this.heroTag,
        @required this.titleProp});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      width: 200,
      child: Card(
        elevation: 8,
        semanticContainer: true,
        margin: EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
                tag: heroTag,
                child: FadeInImage(placeholder: AssetImage('assets/placeholder.png'), image: AssetImage(imageRef), height: 120, fit: BoxFit.cover,)),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Text(
                titleProp,
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(top: 6, left: 16, right: 16),
              child: Text(textProp, style: TextStyle(fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }
}
