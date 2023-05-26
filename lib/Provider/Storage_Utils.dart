import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageUtil with ChangeNotifier {
  late int valu = 5;

  setValue(String val) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setInt('intValue', 5);
  }

  getString() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    // int values = pref.getInt('intValue');

    // valu = values;
    notifyListeners();
  }
}
