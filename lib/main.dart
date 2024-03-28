import 'package:coffee_shop_01/core/routes/pages.dart';
import 'package:coffee_shop_01/core/service/Global.dart';
import 'package:coffee_shop_01/core/services/theme_services.dart';
import 'package:coffee_shop_01/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [...AppPages.allBlocProviders(context)],
      child: SafeArea(
        child: ScreenUtilInit(
          builder: (context, child) => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: Themes.light,
            darkTheme: Themes.dart,
            themeMode: ThemeServices().theme,
            onGenerateRoute: AppPages.GenerateRouteSettings,
            builder: EasyLoading.init(),
          ),
        ),
      ),
    );
  }
}
