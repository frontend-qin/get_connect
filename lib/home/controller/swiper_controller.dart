import 'package:get/get.dart';
import 'package:news_app/entity/swiper_entity.dart';
import 'package:news_app/home/provider/provider.dart';

class SwiperListController extends GetxController
    with StateMixin<SwiperEntity> {
  final SwiperProvider provider;

  SwiperListController({this.provider});

  @override
  void onInit() {
    this.getBannerRequest();
  }

  // 获取轮播图数据
  Future<void> getBannerRequest() async {
    final Response response = await provider.getBannerList();

    if (response.hasError) {
      change(null, status: RxStatus.error(response.statusText));
    } else {
      change(response.body, status: RxStatus.success());
    }
  }
}
