import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

const List<String> defaultImages = [
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tdgve1j30ku0bsn75.jpg',
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2whp87sj30ku0bstec.jpg',
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tl1v3bj30ku0bs77z.jpg',
];

var imageHeight = 750.0;
var imageWidth = 424.0;

class IndexSwiper extends StatelessWidget {
  final List<String> images;
  const IndexSwiper({Key? key, this.images = defaultImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.width / imageHeight * imageWidth;
    return Container(
      height: height,
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(images[index], fit: BoxFit.fill);
        },
        autoplay: true,
        itemCount: images.length,
        pagination: new SwiperPagination(alignment: Alignment.bottomCenter),
        control: new SwiperControl(),
      ),
    );
  }
}
