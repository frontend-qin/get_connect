import 'package:get/get.dart';
import 'package:news_app/news/news_entity.dart';
import 'package:news_app/news/provider.dart';

class NewsStateMixinController extends GetxController
    with StateMixin<NewsPageListResponseEntity> {
  //
  final NewsStateMixinProvider provider;

  NewsStateMixinController({this.provider});

  @override
  void onInit() {
    this.getNewsPageList();
    super.onInit();
  }

  /// 拉取新闻列表
  Future<void> getNewsPageList() async {
    // 拉取数据
    final Response response = await provider.getNews();
    if (response.hasError) {
      change(null, status: RxStatus.error(response.statusText));
    } else {
      // var data = NewsPageListResponseEntity.fromJson(response.body);
      change(response.body, status: RxStatus.success());
    }
  }
}
