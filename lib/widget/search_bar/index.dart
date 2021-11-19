import 'package:flutter/material.dart';
import 'dart:ffi';

class SearchBar extends StatefulWidget {
  final bool? shwoLocation;
  final Function? goBackCallback;
  final String? inputValue;
  final String? defaultInputValue;
  final Function? onCancel;
  final bool? showMap;
  final Function? onSearch;
  final ValueChanged<String>? onSearchSubmit;

  SearchBar(
      {Key? key,
      this.shwoLocation,
      this.goBackCallback,
      this.inputValue,
      this.defaultInputValue,
      this.onCancel,
      this.showMap,
      this.onSearch,
      this.onSearchSubmit})
      : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String _searchWord = '';
  late TextEditingController _controller;
  Function? _onClean() {
    _controller.clear();
    setState(() {
      _searchWord = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          if (widget.shwoLocation != null)
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Icon(Icons.room, color: Colors.green, size: 20),
                  Text('Duisburg',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
            ),
          if (widget.goBackCallback != null)
            GestureDetector(
              // onTap: widget.goBackCallback,
              child: Icon(
                Icons.chevron_left,
                color: Colors.black87,
              ),
            ),
          Expanded(
              child: Container(
            height: 30,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(18)),
            padding: EdgeInsets.only(left: 8),
            child: TextField(
              textInputAction: TextInputAction.search,
              style: TextStyle(fontSize: 4),
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: -4),
                  hintText: 'search words eingeben!',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, size: 24, color: Colors.grey),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _onClean();
                    },
                    child: Icon(
                      Icons.clear,
                      size: 24,
                      color: Colors.grey,
                    ),
                  )),
            ),
          ))
        ],
      ),
    );
  }
}
