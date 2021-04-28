import 'package:get/get.dart';
import 'package:news_app/entity/model_entity.dart';

class ModelController extends GetxController {
  List modelList = [
    ModelEntity("assets/home/1.png", "分类"),
    ModelEntity("assets/home/2.png", "秒杀拍"),
    ModelEntity("assets/home/3.png", "超市购"),
    ModelEntity("assets/home/4.png", "母婴品"),
  ];
}
