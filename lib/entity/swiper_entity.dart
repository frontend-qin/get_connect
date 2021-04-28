/// 轮播图 实例
class SwiperEntity {
  List<Message> message;
  Meta meta;

  SwiperEntity({this.message, this.meta});

  SwiperEntity.fromJson(Map<String, dynamic> json) {
    if (json['message'] != null) {
      message = [];
      json['message'].forEach((v) {
        message.add(new Message.fromJson(v));
      });
    }
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.message != null) {
      data['message'] = this.message.map((v) => v.toJson()).toList();
    }
    if (this.meta != null) {
      data['meta'] = this.meta.toJson();
    }
    return data;
  }
}

class Message {
  String imageSrc;
  String openType;
  int goodsId;
  String navigatorUrl;

  Message({this.imageSrc, this.openType, this.goodsId, this.navigatorUrl});

  Message.fromJson(Map<String, dynamic> json) {
    imageSrc = json['image_src'];
    openType = json['open_type'];
    goodsId = json['goods_id'];
    navigatorUrl = json['navigator_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image_src'] = this.imageSrc;
    data['open_type'] = this.openType;
    data['goods_id'] = this.goodsId;
    data['navigator_url'] = this.navigatorUrl;
    return data;
  }
}

class Meta {
  String msg;
  int status;

  Meta({this.msg, this.status});

  Meta.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['status'] = this.status;
    return data;
  }
}
