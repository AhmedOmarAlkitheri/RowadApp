import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

class Getstorage_helper {
  Getstorage_helper._();

  static Getstorage_helper? instance_gs;
  GetStorage box = GetStorage();
//get instance =>   Httphelper._();

  static Getstorage_helper get instance {
    instance_gs ??= Getstorage_helper._();
    return instance_gs!;
  }

  writeToFile({required String key, Options? options, required dynamic value}) {
    return box.write(key, value);
  }

  readFrmFile(String key) {
    return box.read(key);
  }

  remove(String key) {
    return box.remove(key);
  }

  removeAll() {
    box.erase();
  }
}
