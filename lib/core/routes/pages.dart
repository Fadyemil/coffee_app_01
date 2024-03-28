// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, unused_local_variable, avoid_print
import 'package:coffee_shop_01/Features/Screen/app_page/logic/App/app_cubit.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/Flavor/flavor_cubit.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/counter_cubit.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/view/Application.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/view/Order.dart';
import 'package:coffee_shop_01/Features/Screen/auth/logic/sign_in/sign_in_cubit.dart';
import 'package:coffee_shop_01/Features/Screen/auth/logic/sign_up/sign_up_cubit.dart';
import 'package:coffee_shop_01/Features/Screen/auth/view/Sign_in.dart';
import 'package:coffee_shop_01/Features/Screen/auth/view/Sign_up.dart';
import 'package:coffee_shop_01/Features/Screen/splash_page/Manger/splash/splash_cubit.dart';
import 'package:coffee_shop_01/Features/Screen/splash_page/view/splash.dart';
import 'package:coffee_shop_01/core/routes/names.dart';
import 'package:coffee_shop_01/core/service/Global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ^ يحتوي هذا الكلاس على معلومات الصفحات والبلوكات المرتبطة بها وتوجيهات التطبيق
class AppPages {
  // ~ تعريف قائمة بجميع الصفحات والبلوكات المرتبطة بها
  static List<PageEntity> routes() {
    return [
      PageEntity(
        route: AppRoutes.INITIAL,
        page: Splash_page(),
        cubit: BlocProvider(
          create: (_) => SplashCubit(),
        ),
      ),
      PageEntity(
        route: AppRoutes.SIGN_IN,
        page: const SignInPage(),
        cubit: BlocProvider(
          create: (_) => SignInCubit(),
        ),
      ),
      PageEntity(
        route: AppRoutes.REGISTER,
        page: const SignUpPage(),
        cubit: BlocProvider(
          create: (_) => SignUpCubit(),
        ),
      ),
      PageEntity(
        route: AppRoutes.APPLICATION,
        page: const ApplicationPage(),
        cubit: BlocProvider(
          create: (_) => AppCubit(),
        ),
      ),
      PageEntity(
        route: AppRoutes.Order_page,
        page: const Order(),
        cubit: BlocProvider(
          create: (_) => CounterCubit(),
        ),
      ),
    ];
  }

  // ~استرداد جميع البلوكات الموجودين في القائمة
  static List<dynamic> allBlocProviders(BuildContext context) {
    List<dynamic> blocProviders = <dynamic>[];
    blocProviders.add(
      BlocProvider(
        create: (_) => FlavorCubit(),
      ),
    );
    for (var cubit in routes()) {
      if (cubit.cubit != null) {
        blocProviders.add(cubit.cubit);
      }
    }
    return blocProviders;
  }

  // ^إنشاء توجيه للصفحة المستخدمه وفقًا لإعدادات التوجيه
  static MaterialPageRoute GenerateRouteSettings(RouteSettings settings) {
    if (settings.name != null) {
      // !البحث عن الصفحة المرادة في قائمة الصفحات
      var result = routes().where((element) => element.route == settings.name);

      if (result.isNotEmpty) {
        // ^ التحقق مما إذا كانت هذه الصفحة هي الصفحة الأولى والجهاز قام بالفتح للمرة الأولى
        bool deviceFirstOpen = Global.storageService.getDeviceFirstOpen();
        if (result.first.route == AppRoutes.INITIAL && deviceFirstOpen) {
          // ^التحقق مما إذا كان المستخدم مسجل الدخول
          bool isLoggedIn = Global.storageService.getIsLoggedIn();
          if (isLoggedIn) {
            // ^إذا كان المستخدم مسجل الدخول، قم بتوجيهه إلى صفحة التطبيق
            return MaterialPageRoute(
              builder: (_) => const ApplicationPage(),
              settings: settings,
            );
          }
          // ^إذا لم يكن المستخدم مسجل الدخول، قم بتوجيهه إلى صفحة تسجيل الدخول
          return MaterialPageRoute(
              builder: (_) => const SignInPage(), settings: settings);
        }
        // ^إذا تم العثور على الصفحة المطلوبة، قم بتوجيه المستخدم إليها
        return MaterialPageRoute(
            builder: (_) => result.first.page, settings: settings);
      }
    }
    // ^إذا كانت الصفحة غير موجودة، قم بطباعة رسالة الخطأ توجيه المستخدم إلى صفحة تسجيل الدخول
    print('*************${settings.name}*******************');
    return MaterialPageRoute(
        builder: (_) => const SignInPage(), settings: settings);
  }
}

//~ كلاس يمثل كيان الصفحة والبلوك المرتبط بها
class PageEntity {
  String route;
  Widget page;
  dynamic cubit;
  PageEntity({required this.route, required this.page, this.cubit});
}
