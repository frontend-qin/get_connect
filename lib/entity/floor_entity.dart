class FloorEntity {
  List<Message> message;
  Meta meta;

  FloorEntity({this.message, this.meta});

  FloorEntity.fromJson(Map<String, dynamic> json) {
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
  FloorTitle floorTitle;
  List<ProductList> productList;

  Message({this.floorTitle, this.productList});

  Message.fromJson(Map<String, dynamic> json) {
    floorTitle = json['floor_title'] != null
        ? new FloorTitle.fromJson(json['floor_title'])
        : null;
    if (json['product_list'] != null) {
      productList = [];
      json['product_list'].forEach((v) {
        productList.add(new ProductList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.floorTitle != null) {
      data['floor_title'] = this.floorTitle.toJson();
    }
    if (this.productList != null) {
      data['product_list'] = this.productList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FloorTitle {
  String name;
  String imageSrc;

  FloorTitle({this.name, this.imageSrc});

  FloorTitle.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    imageSrc = json['image_src'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image_src'] = this.imageSrc;
    return data;
  }
}

class ProductList {
  String name;
  String imageSrc;
  String imageWidth;
  String openType;
  String navigatorUrl;

  ProductList(
      {this.name,
      this.imageSrc,
      this.imageWidth,
      this.openType,
      this.navigatorUrl});

  ProductList.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    imageSrc = json['image_src'];
    imageWidth = json['image_width'];
    openType = json['open_type'];
    navigatorUrl = json['navigator_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image_src'] = this.imageSrc;
    data['image_width'] = this.imageWidth;
    data['open_type'] = this.openType;
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
