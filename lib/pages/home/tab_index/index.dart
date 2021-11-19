import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/home/info/index.dart';
import 'package:flutter_app_1/pages/home/tab_index/index_navigator.dart';
import 'package:flutter_app_1/pages/home/tab_index/index_recommend.dart';
import 'package:flutter_app_1/widget/search_bar/index.dart';

import 'index_swiper.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key? key}) : super(key: key);

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
        children: [
          IndexSwiper(),
          IndexNavigator(),
          IndexRecomment(),
          Info(),
        ],
      ),
    );
  }
}
