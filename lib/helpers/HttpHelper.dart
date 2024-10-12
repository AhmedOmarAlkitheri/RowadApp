import 'package:dio/dio.dart';

class Httphelper {
  Httphelper._();
  static Httphelper? httphelper;
  Dio d = Dio();

  static Httphelper get instance {
    httphelper ??= Httphelper._();
    return httphelper!;
  }

 



  Future<Response> getRequest(
      {required String url,
      Options? options,
      Map<String, dynamic>? queryParameters}) async {
    return await d.get(url, options: options);
  }

  Future<Response> postRequest(
      {required String url, required dynamic data, Options? options}) async {
    return await d.post(url, data: data, options: options);
  }

  // Future<Response> getData({required String path}) async {
  //   return await dio.get(path);
  // }

  // Future<Response> postRequest({
  //   required String path,
  //   required dynamic data,
  //   Options? options,
  // }) async {
  //   return await dio.post(path , data: data);
  // }
}
