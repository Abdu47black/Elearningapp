import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  ///Send Email whenever verify scereen appears and set timer for auto redirect
  @override
  void onInit() {
    sendEmailVerification();
    super.onInit();
  }

  sendEmailVerification() async {
    try {
      //await AuthenticationRepository.instance.sendEmailVerification();
      //MLoaders.sucessSnackBar(title: 'Email Sent',message: 'Please Check your inbox and verify your email');
    } catch (e) {
      //  MLoaders.errorSnackBar(title: 'on snap', message: e.toString());
    }
  }
}
