import 'package:flutter/foundation.dart';

class MessageProvider extends ChangeNotifier {
  String _message = '';

  String get message => _message;

  void setMessage(String value) {
    _message = value;
    notifyListeners(); // แจ้งให้ widget ที่ฟังอยู่ rebuild
  }

  void clear() {
    _message = '';
    notifyListeners();
  }
}
