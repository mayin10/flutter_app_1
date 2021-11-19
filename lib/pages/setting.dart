import 'package:flutter/material.dart';
import 'package:flutter_app_1/utils/common_toast.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Setting'),
        ),
        body: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                CommonToast.showToast('logout');
              },
              child: Text(
                '退出登录',
                style: TextStyle(color: Colors.red),
              ),
            )
          ],
        ));
  }
}
