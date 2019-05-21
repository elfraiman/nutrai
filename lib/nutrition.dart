import 'package:flutter/material.dart';

class Nutrition extends StatefulWidget {
  @override
  _Nutrition createState() => _Nutrition();
}

class _Nutrition extends State<Nutrition> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Nutrition', style: TextStyle(fontSize: 30)),
    );
  }
}
