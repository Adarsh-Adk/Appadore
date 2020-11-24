

import 'package:flutter/foundation.dart';

class AppBarController extends ChangeNotifier{
  bool _isPressed=false;
  bool get value=>_isPressed;

  void toggleValue(){
    _isPressed=!_isPressed;
    notifyListeners();
  }
}