import 'package:get/get.dart';
import 'package:news_app/utils/base_provider.dart';

import 'news_entity.dart';

abstract class INewsProvider {
  Future<Response> getNews();
}

class NewsStateMixinProvider extends BaseConnect implements INewsProvider {
  @override
  void onInit() {
    httpClient.defaultDecoder =
        (body) => NewsPageListResponseEntity.fromJson(body);
    super.onInit();
  }

  @override
  Future<Response> getNews() => get("/news");
}
