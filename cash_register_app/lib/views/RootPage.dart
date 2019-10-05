import 'package:cash_register_app/views/MarketingManagementPage.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  RootPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    MarketingManagementPage(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Olivetti Cash'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.find_replace),
            title: Text('Marketing Management'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('Messagges'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_upload),
            title: Text('Pick Ups'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings and Account'),//per connettere i social
          ),
        ],
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
