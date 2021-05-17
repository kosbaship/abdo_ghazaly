import 'package:abdo_ghazaly/shared/app_end_pints.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper {
  static Dio dio;

  DioHelper() {
    dio = Dio(
      BaseOptions(
        baseUrl: kBaseURL,
      ),
    );
  }

  static Future<Response> postData({@required path}) async {
    return await dio.get(path);
  }
}
