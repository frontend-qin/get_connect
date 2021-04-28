import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/entity/floor_entity.dart';
import 'package:news_app/home/provider/floor_provider.dart';

class FloorController extends GetxController with StateMixin<FloorEntity> {
  FloorProvider provider;
  FloorController({@required this.provider});

  @override
  void onInit() {
    this.getFloorRequest();

    super.onInit();
  }

  Future<void> getFloorRequest() async {
    final Response response = await provider.getFloorData();
    if (response.hasError) {
      change(null, status: RxStatus.error(response.statusText));
    } else {
      change(response.body, status: RxStatus.success());
    }
  }
}
