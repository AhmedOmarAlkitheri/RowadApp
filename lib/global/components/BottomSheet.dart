import 'package:flutter/foundation.dart';

class BottomSheetMenu with ChangeNotifier {
  int selectedItem = 0;
  int selectedItem1 = 0;
  int selectedItem2 = 0;

  void toggleSelectedItem() {
    selectedItem = (selectedItem + 1) % 2;
    notifyListeners();
  }

  void toggleSelectedItem1() {
    selectedItem1 = (selectedItem1 + 1) % 2;
    notifyListeners();
  }

  void toggleSelectedItem2() {
    selectedItem2 = (selectedItem2 + 1) % 2;
    notifyListeners();
  }
}
