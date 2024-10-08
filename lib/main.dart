import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/constants/routemanagment.dart';
import 'package:sms/controller/splashcontroller.dart';
import 'services/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  // await LocalStorage().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (buildContext, orientation, screenType) {
        return GetBuilder(
            init: SplashController(),
            builder: (controller) {
              return GetMaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'SMS',
                  defaultTransition: Transition.cupertino,
                  getPages: RouteGenerator.getPages(),
                  initialRoute: RouteConstants.splashscreen);
            });
      },
    );
  }
}
