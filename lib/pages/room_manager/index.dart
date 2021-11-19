import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/home/tab_search/data_list.dart';
import 'package:flutter_app_1/widget/room_list_item_widget.dart';

class RoomManagerPage extends StatelessWidget {
  const RoomManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Verwaltung'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'nicht vermietet'),
              Tab(
                text: 'vermietet',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
                children: dataList
                    .map((item) => RoomListItemWidget(
                          data: item,
                        ))
                    .toList()),
            ListView(
                children: dataList
                    .map((item) => RoomListItemWidget(
                          data: item,
                        ))
                    .toList()),
          ],
        ),
      ),
    );
  }
}
