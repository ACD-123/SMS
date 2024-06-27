
import 'package:get/get.dart';
import 'package:sms/repositries/authenication_repo.dart';
import 'package:sms/services/apiservices.dart';

Future<void> init() async {
  Get.lazyPut(() => HttpApiClient());
  Get.lazyPut(() => AuthRepo(apiClient: Get.find()));
 
}
