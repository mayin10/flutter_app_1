import 'package:flutter/material.dart';

var textStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

class TabProfileHeader extends StatelessWidget {
  const TabProfileHeader({Key? key}) : super(key: key);

  Widget _notLoginBuilder(BuildContext context) {
    String userImage =
        'https://tva1.sinaimg.cn/large/008i3skNgy1gsuhtensa6j30lk0li76f.jpg';
    return Container(
      color: Colors.teal,
      padding: EdgeInsets.all(16),
      height: 110,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundImage: NetworkImage(userImage),
            ),
          ),
          SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Username',
                    style: textStyle,
                  ),
                  Text(
                    'Edit User',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              Text(
                'Edit User',
                style: TextStyle(fontSize: 16, color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _loginBuilder(BuildContext context) {
    String userImage =
        'https://tva1.sinaimg.cn/large/008i3skNgy1gsuhtensa6j30lk0li76f.jpg';
    return Container(
      color: Colors.teal,
      padding: EdgeInsets.all(16),
      height: 110,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundImage: NetworkImage(userImage),
            ),
          ),
          SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Username',
                    style: textStyle,
                  ),
                  Text(
                    'Edit User',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              Text(
                'Edit User',
                style: TextStyle(fontSize: 16, color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var isLogin = true;
    return isLogin ? _loginBuilder(context) : _notLoginBuilder(context);
  }
}
