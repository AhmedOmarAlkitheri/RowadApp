import 'package:flutter/material.dart';

class scroll_BottomBar extends ChangeNotifier {
  // bool _isContainerVisible = true;

  // bool get isContainerVisible => _isContainerVisible;

  // void updateVisibility(double scrollOffset) {
  //   if (scrollOffset > 200 && _isContainerVisible) {
  //     _isContainerVisible = false;
  //     notifyListeners();
  //   } else if (scrollOffset <= 200 && !_isContainerVisible) {
  //     _isContainerVisible = true;
  //     notifyListeners();
  //   }
  // }

  bool _isVisible = true;

  bool get isVisible => _isVisible;

  void setVisibility(bool visibility) {
    if (_isVisible != visibility) {
      _isVisible = visibility;
      notifyListeners();
    }
  }
}
