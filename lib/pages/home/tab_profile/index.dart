import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/home/info/index.dart';
import 'package:flutter_app_1/pages/home/tab_profile/advertisment.dart';
import 'package:flutter_app_1/pages/home/tab_profile/function_button.dart';
import 'package:flutter_app_1/pages/home/tab_profile/header.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('roomManage');
              },
              icon: Icon(Icons.settings),
            ),
          ],
          title: Text(
            'Mein',
          ),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          children: [
            TabProfileHeader(),
            FunctionButton(),
            Adverstisment(),
            Info(
              showTitle: true,
            )
          ],
        ));
  }
}
