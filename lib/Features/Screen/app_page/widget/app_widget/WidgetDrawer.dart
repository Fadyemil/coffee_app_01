import 'package:coffee_shop_01/Features/Screen/app_page/logic/App/app_cubit.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/logic/App/app_state.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/bartOneSliderDrawer.dart';
import 'package:coffee_shop_01/core/services/theme_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class WidgetDrawer extends StatefulWidget {
  const WidgetDrawer({
    super.key,
  });

  @override
  State<WidgetDrawer> createState() => _WidgetDrawerState();
}

class _WidgetDrawerState extends State<WidgetDrawer> {
  late bool status1 = false;
  late bool status2 = T;
  late bool status3 = T;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Drawer(
          child: SliderDrawer(
            appBar: SliderAppBar(
              appBarColor: Colors.blue.shade400,
            ),
            slider: Container(
              padding: const EdgeInsets.all(12),
              color: Colors.blueGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    height: 45,
                    child: Row(
                      children: [
                         Text(
                          'Chage Mode to ${Get.isDarkMode?'Dart':'light'} ',
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        IconButton(onPressed: (){
                          ThemeServices().switchTheme();
                        }, icon: Icon( Get.isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode))
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    height: 45,
                    child: Row(
                      children: [
                        const Text(
                          'Face ID',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Switch(
                          activeColor: Colors.white,
                          inactiveThumbColor: Colors.white.withOpacity(0.5),
                          inactiveTrackColor: Colors.green,
                          value: status2,
                          onChanged: (val) {
                            setState(
                              () {
                                status2 = val;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    height: 45,
                    child: Row(
                      children: [
                        const Text(
                          'Passcode Lock',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Switch(
                          activeColor: Colors.white,
                          inactiveThumbColor: Colors.white.withOpacity(0.5),
                          inactiveTrackColor: Colors.green,
                          value: status3,
                          onChanged: (val) {
                            setState(
                              () {
                                status3 = val;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    textAlign: TextAlign.left,
                    'Help & Policoes',
                    style: TextStyle(
                        fontWeight: FontWeight.w900, color: Colors.black),
                  ),
                  Show_Help_Prolices('Help', const Icon(Icons.help_outline)),
                  Show_Help_Prolices('Application Terms',
                      const Icon(Icons.library_books_outlined)),
                  Show_Help_Prolices('Privacy Notice', const Icon(Icons.lock)),
                  Show_Help_Prolices('Delete Account',
                      const Icon(Icons.arrow_forward_ios_sharp)),
                ],
              ),
            ),
            child: const bartOneSliderDrawer(),
          ),
        );
      },
    );
  }

  Padding Show_Help_Prolices(String text1, Icon icon) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(text1),
          Spacer(),
          icon,
        ],
      ),
    );
  }
}
