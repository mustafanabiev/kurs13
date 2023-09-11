import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class TokenService {
  static const String tokenName = 'token-name';

  Future<bool> init() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final uid = pref.getString(tokenName);
    log('uid: $uid');
    if (uid != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> setData(String value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(tokenName, value);
  }

  Future<void> removeData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.remove(tokenName);
  }
}

final tokenService = TokenService();
