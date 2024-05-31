class MFirebaseAuthException implements Exception {
  /// ----the error code assosiated  with the exception
  final String code;

  MFirebaseAuthException(this.code);

  String get message {
    if (code case 'email-already-in-use') {
      return 'Them email address is already registered , Please use a diffed email';
    } else if (code case 'invalid email') {
      return 'The email address provided is invalid .Please enter a valid email';
    } else if (code case 'weak-password') {
      return 'The password is too weak.Please choose a stronger password';
    } else if (code case 'user-disabled') {
      return 'This user account has been disabled. Please contact assistance';
    } else if (code case 'User-not_found') {
      return 'Invalid login details. User not Found';
    } else if (code case 'wrong-password') {
      return 'Incorrect password.Please check your password and try again';
    } else if (code case 'Invalid-verification-code') {
      return 'Invalid verification code.Please enter a valid code.';
    } else if (code case 'Invalid-verification-Id') {
      return 'Invalid verification ID.Please enter a valid code';
    } else if (code case 'quota-exceeded') {
      return 'Quota exceeded.Please try again later.';
    } else if (code case 'email-already-exists') {
      return 'The email address already exists.Please use a different email';
    } else if (code case 'Provider-already-linked') {
      return 'The account is already linked with another provided';
    } else if (code case '') {
      return '';
    } else {
      return ("Unknown error occurred");
    }
  }
}
