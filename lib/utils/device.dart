import 'dart:convert';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Device {
  static const String _prefix = "[Device]";

  static RouteObserver<ModalRoute<dynamic>> routeObserver =
      RouteObserver<ModalRoute<dynamic>>();
  static late DeviceInfoPlugin _deviceInfoPlugin;
  static late Map<String, dynamic> _appConfig;
  static late AndroidDeviceInfo _androidDeviceInfo;
  static late IosDeviceInfo _iosDeviceInfo;
  static late SharedPreferences _preferences;
  static final GlobalKey<NavigatorState> _navigatorKey =
      GlobalKey<NavigatorState>();

  static init() async {
    _deviceInfoPlugin = DeviceInfoPlugin();
    _preferences = await SharedPreferences.getInstance();
    await _detectMobileDevice();
    await _readConfigFile();
  }

  static get getNavigatorKey => _navigatorKey;

  static _readConfigFile() async {
    String content = await rootBundle.loadString('config.json');
    _appConfig = jsonDecode(content);
    debugPrint('$_prefix Loaded Config.json File.');
  }

  static _detectMobileDevice() async {
    if (Platform.isIOS) {
      _iosDeviceInfo = await _deviceInfoPlugin.iosInfo;
      debugPrint('$_prefix Detected iOS Device');
    } else {
      _androidDeviceInfo = await _deviceInfoPlugin.androidInfo;
      debugPrint('$_prefix Detected Android Device');
    }
  }

  static isPhysicalDevice() {
    if (Platform.isIOS) return _iosDeviceInfo.isPhysicalDevice;
    return _androidDeviceInfo.isPhysicalDevice;
  }

  static writeToStorage(
      {required String key, required Map<String, dynamic> json}) async {
    await _preferences.setString(key, jsonEncode(json));
    debugPrint('$_prefix Saved $key to SharedPreferences.');
  }

  static readFromStorage({required String key}) {
    var object = _preferences.getString(key);
    if (object != null) {
      debugPrint('$_prefix Found and returned "$key"');
      return jsonDecode(object);
    }
    debugPrint(
        '$_prefix Could not find the object with key: $key, returned empty object.');
    return {};
  }

  static cleanSharedPreferences() async {
    await _preferences.clear();
    debugPrint('$_prefix Cleared Device SharedPreferences');
  }
}
