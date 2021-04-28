import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/components/ink_btn.dart';

import 'package:news_app/home/controller/model_controller.dart';

class ModelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ModelController>(
      builder: (_) => Container(
        margin: EdgeInsets.only(top: 10, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _.modelList
              .map(
                (modelEntity) => InkButton(
                  child: Column(
                    children: [
                      Image.asset(modelEntity.imgPath, height: 50),
                      Text(modelEntity.text),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
