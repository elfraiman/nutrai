import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final productDetail;

  ProductCard(this.productDetail);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Card(
            elevation: 15.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            margin: EdgeInsets.all(16.0),
            child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        child: Image.asset('assets/trump.jpeg')),
                    Center(
                        child: Text(productDetail,
                            style:
                                TextStyle(color: Colors.white, fontSize: 35))),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
