import 'package:dio/dio.dart';

class Httphelper {
  Httphelper._();
  static Httphelper? httphelper;
  Dio dio = Dio();

  static Httphelper get instance {
    httphelper ??= Httphelper._();
    return httphelper!;
  }

  Future<Response> getData({required String path}) async {
    return await dio.get(path);
  }

  Future<Response> postData({
    required String path,
    required dynamic data,
    Options? options,
  }) async {
    return await dio.post(path);
  }
}
