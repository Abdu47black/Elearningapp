import 'package:fidel/common/widgets/loader/loaders.dart';
import 'package:fidel/data/repositories/repositories_authentication/authentication_repository.dart';
import 'package:fidel/features/authentication/view/Password_Configurarion/reset_password.dart';
import 'package:fidel/util/Popups/full_screen_loader.dart';
import 'package:fidel/util/helpers/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  //variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  // send reset password email
  sendPasswordResetEmail() async {
    try {
      //start Loading
      MFullScreenLoader.openLoadingDialog(
          'Processing your request', MImages.docerAnimation);

      // Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        MFullScreenLoader.stopLoading();
        return;
      }

      // form validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        MFullScreenLoader.stopLoading();
        return;
      }

      //send email to reset password
      await AuthenticationRepository.instance
          .sendPasswordResetEmail(email.text.trim());

      // Remove loader
      MFullScreenLoader.stopLoading();

      //show sucess screen
      MLoaders.successSnackBar(
          title: 'Email sent',
          message: 'Email link sent to Reset your Password'.tr);

      //redirect
      Get.to(() => ResetPasswordScreen(email: email.text.trim()));
    } catch (e) {
      // remove loader
      MFullScreenLoader.stopLoading();
      MLoaders.errorSnackbar(title: 'Oh snap', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      //start Loading
      MFullScreenLoader.openLoadingDialog(
          'Processing your request', MImages.docerAnimation);

      // Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        MFullScreenLoader.stopLoading();
        return;
      }

      //send email to reset password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      // Remove loader
      MFullScreenLoader.stopLoading();

      //show sucess screen
      MLoaders.successSnackBar(
          title: 'Email sent',
          message: 'Email link sent to Reset your Password'.tr);
    } catch (e) {
      // remove loader
      MFullScreenLoader.stopLoading();
      MLoaders.errorSnackbar(title: 'Oh snap', message: e.toString());
    }
  }
}
