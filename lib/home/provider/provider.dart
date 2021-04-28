import 'package:get/get_connect/http/src/response/response.dart';
import 'package:news_app/entity/swiper_entity.dart';
import 'package:news_app/utils/base_provider.dart';

abstract class ISwiperProvider {
  /// 获取轮播图列表
  Future<Response> getBannerList();
}

class SwiperProvider extends BaseConnect implements ISwiperProvider {
  @override
  void onInit() {
    httpClient.defaultDecoder = (json) => SwiperEntity.fromJson(json);
    super.onInit();
  }

  @override
  Future<Response> getBannerList() => get("home/swiperdata");
}
