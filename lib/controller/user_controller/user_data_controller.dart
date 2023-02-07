import 'package:electi_test/model/user_model_class.dart';
import 'package:electi_test/services/http_services.dart';
import 'package:get/get.dart';

class UserDataController extends GetxController {
  Rx<UserModelClass> userData = UserModelClass().obs;
  RxBool isLoading = true.obs;

  Future getUserDeatails() async { 
    final data = await UserServiceClass().getUserData();

    try {
      if (data != null) { 
        userData.value = data;

        isLoading.value = false;
      } 
    } catch (e) {
      isLoading.value = false;
    }
  }
}
