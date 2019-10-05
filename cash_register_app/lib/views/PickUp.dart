import 'package:flutter/material.dart';

class PickUpPage extends StatefulWidget {
  PickUpPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PickUpPageState createState() => _PickUpPageState();
}

class _PickUpPageState extends State<PickUpPage> {
  Map pickUpsExample = {
    0: {
      "OrderID": "123456",
      "ProductID": "0003",
      "OrderDate": "20 09 19",
    },
  };

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[],
    );
  }
}
