import 'package:fidel/common/widgets/loader/loaders.dart';
import 'package:fidel/data/repositories/user/user_repository.dart';
import 'package:fidel/features/authentication/models/user_models.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final userRepository = Get.put(UserRepository());

  /// save user record from only Registration  provider
  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      if (userCredentials != null) {
        // Convert name to first ad=nd last name
        final nameParts =
            UserModel.nameParts(userCredentials.user!.displayName ?? '');
        final username =
            UserModel.generateUserName(userCredentials.user!.displayName ?? '');

        // Map data
        final user = UserModel(
            id: userCredentials.user!.uid,
            firstName: nameParts[0],
            username: username,
            lastName: nameParts.length > 1 ? nameParts.sublist(1).join('') : '',
            phoneNumber: userCredentials.user!.phoneNumber ?? '',
            email: userCredentials.user!.email ?? '',
            profilepicture: userCredentials.user!.photoURL ?? '');

        // save user data
        await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      MLoaders.warningSnackBar(
        title: 'Data not saved',
        message:
            'Something went wrong while saving your information. You can re-save your data in your Profile',
      );
    }
  }
}
