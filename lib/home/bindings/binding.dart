import 'package:get/get.dart';
import 'package:news_app/home/controller/floor_controller.dart';
import 'package:news_app/home/controller/model_controller.dart';
import 'package:news_app/home/provider/floor_provider.dart';
import '../controller/swiper_controller.dart';
import '../provider/provider.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SwiperProvider>(() => SwiperProvider());

    Get.lazyPut<SwiperListController>(
        () => SwiperListController(provider: Get.find()));

    Get.lazyPut<ModelController>(() => ModelController());

    Get.lazyPut<FloorController>(() => FloorController(provider: Get.find()));

    Get.lazyPut<FloorProvider>(() => FloorProvider());
  }
}
