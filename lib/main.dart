import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:news_app/home/home_page.dart';
import 'package:news_app/news/bindings.dart';

import 'home/bindings/binding.dart';
import 'news/news_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter',
      initialRoute: "/home",
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: "/",
          page: () => NewsPage(),
          binding: NewsStateMixinBinding(),
        ),
        GetPage(
          name: "/home",
          page: () => HomePage(),
          binding: HomeBinding(),
        ),
      ],
    );
  }
}
