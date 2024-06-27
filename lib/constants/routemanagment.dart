
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/views/onboarding/welcome_screen1.dart';
import 'package:sms/views/splashscreen.dart';

class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(
        name: RouteConstants.splashscreen,
        page: () => const  SplashScreen(),
      ),

      GetPage(
        name: RouteConstants.welcome1,
        page: () =>  WelcomeScreen1(),
      ),

    ];
  }
}
