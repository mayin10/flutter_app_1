import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/home/tab_search/data_list.dart';
import 'package:flutter_app_1/widget/common_tag.dart';

class RoomListItemWidget extends StatelessWidget {
  final RoomListItemData data;
  const RoomListItemWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 8, right: 9, bottom: 8),
        child: Row(
          children: [
            Image.network(
              data.imageUrl,
              width: 132,
              height: 100,
            ),
            Padding(padding: EdgeInsets.only(left: 8)),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Wrap(
                  children: data.tags.map((item) => CommonTag(item)).toList(),
                ),
                Text(
                  '${data.price} Euro/ M',
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
