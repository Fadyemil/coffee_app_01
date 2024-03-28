import 'package:coffee_shop_01/core/values/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

// !كلاس يدير عمليات التخزين باستخدام SharedPreferences
class StorageService {
  late final SharedPreferences _prefs;

  // ^دالة تهيئة الخدمة
  Future<StorageService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  // ~~ دالة لتعيين قيمة بوليانية في التخزين
  Future<bool> setBool(String key, bool value) async {
    return await _prefs.setBool(key, value);
  }

  // ~~ دالة لتعيين قيمة نصية في التخزين
  Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  // ~~ دالة للتحقق مما إذا كان الجهاز قد تم فتحه لأول مرة أم لا
  bool getDeviceFirstOpen() {
    return _prefs.getBool(AppConstants.STORAGE_DEVICE_OPEN_FIRST_TIME) == null
        ? false
        : true;
  }

  // ~ دالة للتحقق مما إذا كان المستخدم قد قام بتسجيل الدخول أم لا
  bool getIsLoggedIn() {
    return _prefs.getString(AppConstants.STORAGE_USER_TOKEN_KEY) == null
        ? false
        : true;
  }

  // ^دالة لإزالة قيمة من التخزين باستخدام المفتاح المعطى
  Future<bool> remove(String key) {
    return _prefs.remove(
        key); // ^إزالة القيمة وإرجاع قيمة بولية تحدد ما إذا نجحت العملية أم لا
  }
}
