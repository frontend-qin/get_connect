import 'package:get/get.dart';

const SERVER_API_URL = 'https://yapi.ducafecat.tech/mock/11';

const BASE_URL = "https://api-hmugo-web.itheima.net/api/public/v1/";

// home/swiperdata
class BaseConnect extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = BASE_URL;

    // 请求拦截
    httpClient.addRequestModifier<void>((request) {
      request.headers["Authorization"] = "token";
      return request;
    });

    // 响应拦截
    httpClient.addResponseModifier((request, response) => response);
  }
}
