import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/home/tab_index/index.dart';
import 'package:flutter_app_1/pages/home/tab_info/index.dart';
import 'package:flutter_app_1/pages/home/tab_profile/index.dart';
import 'package:flutter_app_1/pages/home/tab_search/index.dart';
import 'package:flutter_app_1/widget/page_content.dart';

List<Widget> tabViewList = [
  TabIndex(),
  IndexSearch(),
  TabInfo(),
  TabProfile(),
];

List<BottomNavigationBarItem> barItemList = [
  BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
  BottomNavigationBarItem(label: 'Suchen', icon: Icon(Icons.search)),
  BottomNavigationBarItem(label: 'Info', icon: Icon(Icons.info)),
  BottomNavigationBarItem(label: 'Mein', icon: Icon(Icons.account_circle)),
];

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}
