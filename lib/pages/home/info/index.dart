import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/home/info/data.dart';
import 'package:flutter_app_1/pages/home/info/item_widget.dart';

class Info extends StatelessWidget {
  final bool showTitle;
  final List<InfoItem> dataList;
  const Info({Key? key, this.showTitle = true, this.dataList = infoData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if (showTitle)
            Container(
              padding: EdgeInsets.only(left: 7),
              alignment: Alignment.centerLeft,
              child: Text(
                'Info',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
            ),
          Column(
            children: dataList.map((item) => ItemWidget(data: item)).toList(),
          )
        ],
      ),
    );
  }
}
