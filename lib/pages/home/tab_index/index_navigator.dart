import 'package:flutter/material.dart';

class IndexNavigatorItem {
  final String title;
  final String imageUri;
  final Function(BuildContext contenxt)? onTap;
  IndexNavigatorItem(this.title, this.imageUri, this.onTap);
}

List<IndexNavigatorItem> indexNavigatorItemList = [
  IndexNavigatorItem('整租', 'static/images/home_index_navigator_total.png',
      (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
  IndexNavigatorItem('合租', 'static/images/home_index_navigator_share.png',
      (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
  IndexNavigatorItem('地图找房', 'static/images/home_index_navigator_map.png',
      (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
  IndexNavigatorItem('去出租', 'static/images/home_index_navigator_rent.png',
      (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
];

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: indexNavigatorItemList
              .map((item) => InkWell(
                    onTap: () {
                      item.onTap!(context);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          item.imageUri,
                          width: 47.5,
                        ),
                        Text(
                          item.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ))
              .toList()),
    );
  }
}
