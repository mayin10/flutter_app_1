import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/home/info/index.dart';
import 'package:flutter_app_1/widget/search_bar/index.dart';

class TabInfo extends StatefulWidget {
  TabInfo({Key? key}) : super(key: key);

  @override
  _TabInfoState createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
            shwoLocation: true,
            onSearch: () {
              Navigator.of(context).pushNamed('search');
            }),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [Padding(padding: EdgeInsets.only(top: 8)), Info()],
      ),
    );
  }
}
