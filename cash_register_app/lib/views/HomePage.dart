import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(8, (index) {
        return buildSquare("prova", 20, index);
      }),
    );
  }

  Widget buildSquare(String productName, int discount, int id) {
    return new Column(
      children: <Widget>[
        Image.asset("assets/Image$id.png", fit: BoxFit.scaleDown,),
        ListTile(
          title: Text(productName),
          trailing: Text(discount.toString()),
        )
      ],
    );
  }
}
