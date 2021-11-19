import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/routes.dart';

class PageContent extends StatelessWidget {
  final name;
  const PageContent({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text('Page: $name'),),
        body:ListView(
          children: [
            TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.home);
            },
            child: Text(Routes.home),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.login);
            },
            child: Text(Routes.login),
          ),
                    TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'not found');
            },
            child: Text('不存在的页面'),
          ),
          ],
        )
        
        
        
        )
    );
  }
}