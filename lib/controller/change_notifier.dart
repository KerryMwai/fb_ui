import 'package:flutter/foundation.dart';

class AppChangeNotifier extends ChangeNotifier {
  int _activeIndex = 0;
  void UpdateActiveIndex(int index) {
    _activeIndex = index;
    notifyListeners();
  }

  int get getActiveIndex => _activeIndex;
}
