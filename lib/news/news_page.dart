import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/news/controller.dart';

import 'news_entity.dart';

/// news page
class NewsPage extends GetView<NewsStateMixinController> {
  NewsPage({Key key}) : super(key: key);

  _buildListView(NewsPageListResponseEntity state) {
    return ListView.separated(
      itemCount: state != null ? state.items.length : 0,
      itemBuilder: (context, index) {
        final NewsItem item = state.items[index];
        return ListTile(
          onTap: () => null,
          title: Text(item.title),
          trailing: Text("分类 ${item.category}"),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NewsPage')),
      body: SafeArea(
        child: controller.obx(
          (state) => _buildListView(state),
          onEmpty: Text("onEmpty"),
          onLoading: Center(
            child: Column(
              children: [
                Text("数据加载中"),
                // ElevatedButton(
                //   onPressed: () {
                //     controller.getNewsPageList();
                //   },
                //   child: Text('拉取数据'),
                // ),
              ],
            ),
          ),
          onError: (err) => Text("onEmpty" + err.toString()),
        ),
      ),
    );
  }
}
