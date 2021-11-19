import 'package:flutter/material.dart';

class Adverstisment extends StatelessWidget {
  const Adverstisment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15,bottom: 10,left: 10,right:10),
      child: Image.network('https://tva1.sinaimg.cn/large/006y8mN6ly1g6te62n8f4j30j603vgou.jpg'),
    );
  }
}