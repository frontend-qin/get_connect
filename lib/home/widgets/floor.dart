import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/entity/floor_entity.dart';

import 'package:news_app/home/controller/floor_controller.dart';

class FloorPage extends GetView<FloorController> {
  /// 每一层的楼层
  Widget _floorItem(Message floor, double width) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            child: Image.network(floor.floorTitle.imageSrc),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 120,
                margin: EdgeInsets.only(top: 5),
                height: 205,
                // color: Colors.red,
                child: Image.network(
                  floor.productList[0].imageSrc,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 7),
              Expanded(
                child: Wrap(
                  runSpacing: 5.0,
                  spacing: 5.0,
                  children: floor.productList
                      .map(
                        (e) => e.imageWidth == "232"
                            ? Container()
                            : Container(
                                width: (width - 100) / 2.4,
                                height: 100,
                                child: Image.network(e.imageSrc,
                                    fit: BoxFit.cover),
                              ),
                      )
                      .toList(),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return controller.obx(
      (state) => Column(
        children:
            state.message.map((Message e) => _floorItem(e, width)).toList(),
      ),
    );
  }
}
