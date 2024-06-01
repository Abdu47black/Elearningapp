import 'package:fidel/common/widgets/loader/loaders.dart';
import 'package:fidel/data/repositories/repositories_authentication/authentication_repository.dart';
import 'package:fidel/data/repositories/user/user_repository.dart';
import 'package:fidel/features/authentication/models/user_models.dart';
import 'package:fidel/features/authentication/view/SignUp/widgets/SignUp/verify_email.dart';
import 'package:fidel/util/Popups/full_screen_loader.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/helpers/network_manager.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();
  final hidepassword = true.obs;
  final privacypolicy = true.obs;
  final email = TextEditingController();
  final username = TextEditingController();
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      // start loading
      MFullScreenLoader.openLoadingDialog(
          'We are processing your information...', MImages.loadinganimations);

      //check Internet connectivity
      //todo  final isConnected = await NetworkManager.instance.isConnected();
      // if (!isConnected) return;

      //Form validation
      if (!signupFormKey.currentState!.validate()) {
        MFullScreenLoader.stopLoading();
        return;
      }

      //privacy policy check

      if (!privacypolicy.value) {
        MLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
              'IN order to create account , you must have to read and accept the  privacy Policy & and accepts the terms ',
        );
        return;
      }

      //Register user in the firebase Authentication and save user data in the firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      //save Authenticated user data in the database
      final newuser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstname.text.trim(),
          lastName: lastname.text.trim(),
          username: username.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilepicture: '');

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newuser);

      MFullScreenLoader.stopLoading();

      //show sucess message
      MLoaders.successSnackBar(
          title: 'Congratulation',
          message: 'Your account has been create! verify email to continue');

      //move to verify email message
      Get.to(() => VerifyEmailScreen(emailadress: email.text.trim()));
    } catch (e) {
      MFullScreenLoader.stopLoading();

      // remove loader
      MLoaders.errorSnackbar(title: 'oh Snap', message: e.toString());
    }
  }
}
