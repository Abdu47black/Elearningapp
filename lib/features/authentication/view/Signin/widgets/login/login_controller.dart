import 'package:fidel/common/widgets/loader/loaders.dart';
import 'package:fidel/data/repositories/repositories_authentication/authentication_repository.dart';
import 'package:fidel/util/Popups/full_screen_loader.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/helpers/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  ///variables
  final rememberme = false.obs;
  final hidepassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> LoginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    email.text = localStorage.read('REMEMEBER_ME_EMAIL');
    password.text = localStorage.read('REMEMEBER_ME_PASSWORD');

    super.onInit();
  }

  /// Emailand password signin
  Future<void> emailAndPasswordSignIn() async {
    try {
      // start loading
      MFullScreenLoader.openLoadingDialog(
          'Logging you in', MImages.docerAnimation);

      // Check Internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        MFullScreenLoader.stopLoading();
        return;
      }

      // save data if rememberme is selected
      if (rememberme.value) {
        localStorage.write('REMEMEBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMEBER_ME_PASSWORD', password.text.trim());
      }

      // login user using email and password

      MFullScreenLoader.stopLoading();

      //Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      MFullScreenLoader.stopLoading();
      MLoaders.errorSnackbar(title: 'oh snap', message: e.toString());
    }
  }
}
