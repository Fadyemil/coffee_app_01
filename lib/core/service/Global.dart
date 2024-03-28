// ignore_for_file: file_names
// استيراد الحزم الضرورية
import 'package:coffee_shop_01/core/service/stroage_servic.dart';
import 'package:coffee_shop_01/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/cupertino.dart';

// تهيئة الخدمات العامة التي تحتاج إليها التطبيق
class Global {
  static late StorageService storageService; // خدمة التخزين

  // ~دالة لتهيئة التطبيق والخدمات
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized(); // التأكد من تهيئة Flutter
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform, // تهيئة Firebase
    );
    storageService = await StorageService().init(); //! تهيئة خدمة التخزين
  }
}
