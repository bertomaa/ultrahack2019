import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Text("");
  }

  Widget buildSquare(String productName, int discount, int id) {
    return Stack(children: <Widget>[
      GestureDetector(
        onTap: () {
          _showDiscountQR("ciao");
        },
        child: new Card(
          child: new Column(
            children: <Widget>[
              Container(
                height: 140,
                decoration: new BoxDecoration(
                  image: DecorationImage( 
                    image: new AssetImage("assets/Image$id.png"),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              ListTile(
                title: Text(productName),
              ),
            ],
          ),
        ),
      ),
      new Positioned(
        top: 160,
        left: 110,
        height: 30,
        child: Container(
          decoration: new BoxDecoration(
            color: Colors.red,
            shape: BoxShape.rectangle,
          ),
          child: Center(
              child: Text(
            "Discount " + discount.toString() + "%",
            style: new TextStyle(color: Colors.white),
          )),
        ),
      ),
    ]);
  }

  void _showDiscountQR(String discountCode) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Discount QR:"),
          content: SizedBox(height: 100, width: 100,),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
