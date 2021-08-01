import 'package:flutter/material.dart';
import 'package:ui_trace729/my_home_page.dart';
import 'package:ui_trace729/pages.dart';

class Root extends StatefulWidget {
  const Root({Key key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    pages(Colors.orange),
    pages(Colors.pink),
    pages(Colors.lightBlue),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt((_selectedIndex)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.one_k),label: "1"),
          BottomNavigationBarItem(icon: Icon(Icons.two_k),label: "2"),
          BottomNavigationBarItem(icon: Icon(Icons.three_k),label: "3"),
          BottomNavigationBarItem(icon: Icon(Icons.four_k),label: "4"),
      ],
      currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
