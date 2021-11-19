import 'package:flutter/material.dart';

class CommonFloatActionButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const CommonFloatActionButton(
      {Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) onTap();
      },
      child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(0),
          height: 40,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          )),
    );
  }
}
