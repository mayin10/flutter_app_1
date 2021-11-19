import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/home/tab_search/data_list.dart';
import 'package:flutter_app_1/widget/room_list_item_widget.dart';
import 'package:flutter_app_1/widget/search_bar/index.dart';

class IndexSearch extends StatefulWidget {
  IndexSearch({Key? key}) : super(key: key);

  @override
  _IndexSearchState createState() => _IndexSearchState();
}

class _IndexSearchState extends State<IndexSearch> {
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
        body: Column(
          children: [
            Container(
              height: 41.0,
            ),
            Expanded(
                child: ListView(
              children: dataList
                  .map((item) => RoomListItemWidget(data: item))
                  .toList(),
            ))
          ],
        ));
  }
}
