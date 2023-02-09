import 'package:get/get.dart';
import 'package:medicine_app/ui/pages/pages.dart';

class GetxSplashPresenter extends GetxController implements SplashPresenter {
  @override
  RxBool isLoading = false.obs;

  @override
  void onInit() async {
    await Future.delayed(const Duration(milliseconds: 2000));

    Get.offNamed('/signup');
    super.onInit();
  }
}
