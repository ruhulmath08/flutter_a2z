import 'package:shared_preferences/shared_preferences.dart';

class FlutterA2zSharedPreferences {
  static late SharedPreferences sharedPreferences;

  static Future<void> initializePreferences() async {
    final sp = await SharedPreferences.getInstance();
    sharedPreferences = sp;
  }

  static Future<SharedPreferences> getInstance() async {
    return SharedPreferences.getInstance();
  }

  static void setString({required String key, required String value}) {
    sharedPreferences.setString(key, value);
  }

  static void setInt({required String key, required int value}) {
    sharedPreferences.setInt(key, value);
  }

  static void setDouble({required String key, required double value}) {
    sharedPreferences.setDouble(key, value);
  }

  static void setBool({required String key, required bool value}) {
    sharedPreferences.setBool(key, value);
  }

  static String? getString({required String key}) {
    return sharedPreferences.getString(key);
  }

  static int? getInt({required String key}) {
    return sharedPreferences.getInt(key);
  }

  static double? getDouble({required String key}) {
    return sharedPreferences.getDouble(key);
  }

  static void removeKey(String key) {
    sharedPreferences.remove(key);
  }

  static void clear() {
    sharedPreferences.clear();
  }

  static bool contains({required String key}) {
    return sharedPreferences.containsKey(key);
  }
}
