import 'package:dio/dio.dart';
import 'package:rowadapp/core/model/User.dart';
import 'package:rowadapp/global/constraints/HttpUrl.dart';
import 'package:rowadapp/helpers/Dio_Exception.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';
import 'package:rowadapp/helpers/HttpHelper.dart';

class UsersVm {
  Future<String?> login(User user) async {
    Httphelper httphelper = Httphelper.instance;
    Options? headers = Options();
    headers.headers = {'Content-Type': 'application/json'};

    try {
      print(user.authData());
      Response res = await httphelper.postRequest(
          url: HttpUrls.LOGIN_URL, options: headers, data: user.authData());
      if (res.statusCode == 200) {
        User u = User.fromJson(res.data);
        print(u);
        print(u.token);
        insertData(u);
        return "Success";
      }
    } on DioException catch (x) {
      return Dioexception.handleException(x);
    } catch (e) {
      return "Error is $e";
    }
    return null;
  }

  insertData(User U) {
    Getstorage_helper getstorageHelper = Getstorage_helper.instance;

    getstorageHelper.writeToFile(key: "username", value: U.username!);
    getstorageHelper.writeToFile(key: "token", value: U.token!);

    getstorageHelper.writeToFile(key: "firstName", value: U.firstName!);
    getstorageHelper.writeToFile(key: "lastName", value: U.lastName!);
  }
}
