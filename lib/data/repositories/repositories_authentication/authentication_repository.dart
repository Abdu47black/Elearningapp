// ignore_for_file: dead_code

import 'dart:html';

import 'package:fidel/bottom_nav.dart';
import 'package:fidel/features/authentication/view/SignUp/widgets/SignUp/verify_email.dart';
import 'package:fidel/features/authentication/view/Signin/widgets/login.dart';
import 'package:fidel/features/authentication/view/onboarding/onboarding.dart';
import 'package:fidel/util/exceptions/firebase_auth_exceptions.dart';
import 'package:fidel/util/exceptions/format_exceptions.dart';
import 'package:fidel/util/exceptions/platform_exceptions.dart';
import 'package:fidel/util/exceptions/firebase_excepitons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  User? get authUser => _auth.currentUser;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  void screenRedirect() async {
    final user = _auth.currentUser;

    if (user != null) {
      //if user is logged in
      if (user.emailVerified) {
        //if user email is verfied
        Get.offAll(() => const BottomNavBar());
      } else {
        // if users email is not verified them

        Get.offAll(
            () => const VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    } else {
      deviceStorage.writeIfNull('IsFirstTime', true);

      deviceStorage.read("IsFirstTime") != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(const OnboardingScreen());
    }
  }

  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    }
    //todo this function was supposed to return exception
    on FirebaseAuthException catch (e) {
      throw MFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      throw MFormatException();
    } on PlatformException catch (e) {
      throw MPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    }
    //todo this function was supposed to return exception
    on FirebaseAuthException catch (e) {
      throw MFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      throw MFormatException();
    } on PlatformException catch (e) {
      throw MPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// Email authentication
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    }
    //todo this function was supposed to return exception
    on FirebaseAuthException catch (e) {
      throw MFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      throw MFormatException();
    } on PlatformException catch (e) {
      throw MPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  //Mail verification
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw MFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      throw MFormatException();
    } on PlatformException catch (e) {
      throw MPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  //Mail verification
  Future<UserCredential?> signInWithGoogle() async {
    try {
      // trigger authentication flow
      final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();

      //obtain the auth detail from the request
      final GoogleSignInAuthentication? googleAuth =
          await userAccount?.authentication;

      //create  new credential
      final credentials = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      // once sigined in return the credential
      return await _auth.signInWithCredential(credentials);
    } on FirebaseAuthException catch (e) {
      throw MFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      throw MFormatException();
    } on PlatformException catch (e) {
      throw MPlatformException(e.code).message;
    } catch (e) {
      if (kDebugMode) print('Something went wrong: $e');
      return null;
    }

    /// Logout user
    Future<void> logout() async {
      try {
        await GoogleSignIn().signOut();
        await FirebaseAuth.instance.signOut();
        Get.offAll(() => const LoginScreen());
      } on FirebaseAuthException catch (e) {
        throw MFirebaseAuthException(e.code).message;
      } on FirebaseException catch (e) {
        throw MFirebaseException(e.code).message;
      } on FormatException catch (_) {
        throw MFormatException();
      } on PlatformException catch (e) {
        throw MFirebaseException(e.code).message;
      } catch (e) {
        throw 'Something went wrong. try again';
      }
    }
  }
}
