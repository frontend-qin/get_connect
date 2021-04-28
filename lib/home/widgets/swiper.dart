import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:news_app/home/controller/swiper_controller.dart';

/// 轮播图
class SwiperPage extends GetView<SwiperListController> {
  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => Container(
        height: 160,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              state.message[index].imageSrc,
              fit: BoxFit.fill,
            );
          },
          autoplay: true,
          itemCount: state.message.length,
          pagination: SwiperPagination(),
        ),
      ),
    );
  }
}
