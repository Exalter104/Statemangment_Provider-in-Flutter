import 'package:flutter/foundation.dart';

class LikingProvider extends ChangeNotifier {
  List<int> _EmptyList = [];
  List<int> get EmptyList => _EmptyList;

  void liking(int hearts) {
    _EmptyList.add(hearts);
    notifyListeners();
  }
}
