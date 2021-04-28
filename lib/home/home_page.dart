import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/floor.dart';
import 'widgets/model.dart';
import 'widgets/swiper.dart';

class HomePage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage'), centerTitle: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SwiperPage(),
              ModelWidget(),
              FloorPage(),
            ],
          ),
        ),
      ),
    );
  }
}
