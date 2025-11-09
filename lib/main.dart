import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tortoise/routes/app_pages.dart';
import 'package:tortoise/routes/app_routes.dart';
import 'package:tortoise/view/search/search_view.dart';

import 'di/controller_di.dart';

void main() {

  ControllerDi().registerControllers();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ScreenUtilInit(
      designSize:  Size(size.width, size.height),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          getPages: AppPages.routes,
          initialRoute: AppRoutes.searchView,
          defaultTransition: Transition.cupertino,
          home: child,
        );
      },

    );
  }
}
