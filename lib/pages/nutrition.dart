import 'package:flutter/material.dart';
import '../custom-widgets/recepie_card.dart';
import '../custom-widgets/mini_nutrai_card.dart';

class Nutrition extends StatefulWidget {
  @override
  _Nutrition createState() => _Nutrition();
}

class _Nutrition extends State<Nutrition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Top Purple Container
            Stack(
              children: <Widget>[
                Container(
                  height: 280,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadiusDirectional.vertical(bottom: Radius.circular(25))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0, top: 42),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text('Healthy',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white70)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text('Recepies',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      )
                    ],
                  ),
                ),
                // Row for cards
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 105.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 28.0, bottom: 16.0),
                        child: Row(
                          children: <Widget>[
                            RecepieCard(),
                            RecepieCard(),
                            RecepieCard(),
                            RecepieCard()
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // Done top
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 16),
              child: Material(
                  elevation: 8,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                  clipBehavior: Clip.antiAlias,
                  child: TextField(
                    style: TextStyle(fontSize: 14),
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      hasFloatingPlaceholder: true,
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                    ),
                  )),
            ),
            // Breakfast Title Row
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Text('Good Morning', style: TextStyle(fontSize: 20))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    MiniNutraiCard(
                      imageRef: 'assets/almonds-breakfast.jpg',
                      textProp: 'Almond burst',
                      titleProp: 'Breakfast',
                      heroTag: 'almondsHero',
                    ),
                    MiniNutraiCard(
                      imageRef: 'assets/almonds-breakfast.jpg',
                      textProp: 'Almond burst',
                      titleProp: 'Breakfast',
                      heroTag: 'almondsHero2',
                    ),
                    MiniNutraiCard(
                      imageRef: 'assets/almonds-breakfast.jpg',
                      textProp: 'Almond burst',
                      titleProp: 'Breakfast',
                      heroTag: 'almondsHero3',
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Text('Mid Day Burst', style: TextStyle(fontSize: 20))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    MiniNutraiCard(
                      imageRef: 'assets/almonds-breakfast.jpg',
                      textProp: 'Almond burst',
                      titleProp: 'Breakfast',
                      heroTag: 'almondsHero4',
                    ),
                    MiniNutraiCard(
                      imageRef: 'assets/almonds-breakfast.jpg',
                      textProp: 'Almond burst',
                      titleProp: 'Breakfast',
                      heroTag: 'almondsHero5',
                    ),
                    MiniNutraiCard(
                      imageRef: 'assets/almonds-breakfast.jpg',
                      textProp: 'Almond burst',
                      titleProp: 'Breakfast',
                      heroTag: 'almondsHero6',
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Text('Dinner? Yes please', style: TextStyle(fontSize: 20))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    MiniNutraiCard(
                      imageRef: 'assets/almonds-breakfast.jpg',
                      textProp: 'Almond burst',
                      titleProp: 'Breakfast',
                      heroTag: 'almondsHero7',
                    ),
                    MiniNutraiCard(
                      imageRef: 'assets/almonds-breakfast.jpg',
                      textProp: 'Almond burst',
                      titleProp: 'Breakfast',
                      heroTag: 'almondsHero8',
                    ),
                    MiniNutraiCard(
                      imageRef: 'assets/almonds-breakfast.jpg',
                      textProp: 'Almond burst',
                      titleProp: 'Breakfast',
                      heroTag: 'almondsHero9',
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
