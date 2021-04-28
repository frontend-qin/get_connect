import 'dart:convert';

import 'package:get/get.dart';
import 'package:news_app/entity/floor_entity.dart';
import 'package:news_app/utils/base_provider.dart';

abstract class IFloorProvider {
  Future<Response> getFloorData();
}

class FloorProvider extends BaseConnect implements IFloorProvider {
  @override
  void onInit() {
    httpClient.defaultDecoder = (json) => FloorEntity.fromJson(json);
    super.onInit();
  }

  @override
  Future<Response> getFloorData() => get("home/floordata");
}
