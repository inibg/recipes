import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

enum DioRequest { POST, GET, PUT, PATCH, DELETE }

abstract class HTTPService {
  static Future<dynamic> request({
    DioRequest method = DioRequest.GET,
    required String path,
    Map<String, String>? headers,
    Encoding? encoding,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? bodyRaw,
  }) async {
    if (!await checkInternetConnection()) {
      throw Exception(['NOT_INTERNET_EXCEPTION']);
    }
    Dio dioInstance = Get.find<Dio>();
    dioInstance.options.headers = {...?headers};
    dioInstance.options.contentType = Headers.jsonContentType;
    dioInstance.options.method = method.name;
    final response = await dioInstance.request(
      path,
      queryParameters: queryParameters,
      data: bodyRaw,
    );
    return response.data;
  }

  static Future<bool> checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.none)) {
      return false;
    }
    return true;
  }
}
