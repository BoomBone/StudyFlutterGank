import 'package:dio/dio.dart';
import 'dart:convert';

class NetUtil {
  static const String GET = "get";
  static const String POST = "post";

  ///get请求
  static void get(String url, Function callBack,
      {Map<String, String> params, Function errorCallBack}) async {
    _request(url, callBack,
        method: GET, params: params, errorCallback: errorCallBack);
  }

  ///post请求
  static void post(String url, Function callBack,
      {Map<String, String> params, Function errorCallback}) async {
    _request(url, callBack,
        method: POST, params: params, errorCallback: errorCallback);
  }

  ///具体的还要看返回数据，公共代码部分
  static void _request(String url, Function callBack,
      {String method,
      Map<String, String> params,
      Function errorCallback}) async {
    print("<net> url :<" + method + ">" + url);

    if (params != null && params.isNotEmpty) {
      print("<net> url params :" + params.toString());
    }

    //这里要根据项目自适应
    String errorMsg = "";
    int statusCode;
    try {
      Response response;
      if (method == GET) {
        //有参数的GET请求
        if (params != null && params.isNotEmpty) {
          StringBuffer sb = new StringBuffer("?");
          params.forEach((key, value) {
            sb.write("$key" + "=" + "$value" + "&");
          });
          String paramStr = sb.toString();
          paramStr = paramStr.substring(0, paramStr.length - 1);
          url += paramStr;
        }
        //没有参数，有参数
        response = await Dio().get(url);
      } else {
        //请求
        if (params != null && params.isNotEmpty) {
          response = await Dio().post(url, data: params);
        } else {
          response = await Dio().post(url);
        }
      }
      statusCode = response.statusCode;

      //处理错误部分
      if (statusCode < 0) {
        errorMsg = "网络请求错误，状态码：" + statusCode.toString();
        _handError(errorCallback, errorMsg);
        return;
      }

      if (callBack != null) {
        print("<response> :" + response.data["results"].toString());
        //此处为返回值
        callBack(response.data["results"]);
      }
    } catch (exception) {
      _handError(errorCallback, exception.toString());
    }
  }

  //处理异常
  static void _handError(Function errorCallback, String errorMsg) {
    if (errorCallback != null) {
      errorCallback(errorMsg);
    }
    print("<net> errorMsg : " + errorMsg);
  }
}
