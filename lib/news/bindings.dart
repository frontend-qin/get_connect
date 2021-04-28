import 'package:get/get.dart';
import 'package:news_app/news/provider.dart';

import 'controller.dart';

class NewsStateMixinBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsStateMixinProvider>(() => NewsStateMixinProvider());

    Get.lazyPut<NewsStateMixinController>(
        () => NewsStateMixinController(provider: Get.find()));
  }
}
