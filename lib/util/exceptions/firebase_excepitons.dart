class MFirebaseException implements Exception {
  final String code;
  MFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'unknown':
        return 'An unknown Firebase error occurred.Please try again';
      case 'invalid custom token':
        return 'The custom token format is incorrect.Please check Your custom token';
      case 'custom-token-mismatch':
        return 'The custom token corresponds to a different audience';
      case 'user-disabled':
        return 'The user account has been disabled';
      case 'user-not-found':
        return 'No user found for the given email or ID';
      case 'Invalid email ':
        return 'the Email address is provide is invalid. Please enter a valid Email';
      case 'email-already-in use':
        return 'This email address is already register.Please use a different email';
      case 'wrong-password':
        return 'Incorrect password. Please check your password and try again';
      case 'weak-password':
        return 'The password is too weak. Please choose a stronger Password';
      case 'provider-already-linked':
        return 'The account is already linked with another provider.';
      case 'operation-not-allowed':
        return 'The operation is not allowed.contact  support for assistance.';
      case 'invalid-credentials':
        return 'The supplied credential';
      case 'invalid-credential':
        return 'The supplied information is malformed or has expired';
      case 'invalid-verification-code':
        return 'Invalid verification Id. Please request a verification code';
      case 'invalid-verification-id':
        return 'Invalid Verification ID. Please request a verification code';
      case 'captcha-check-failed':
        return 'The reCAPTCHA response is invalid .Please try again';
      case 'app-not-authorized':
        return 'The app is not allowed to use FireBase Authentication with the Provided API key';
      case 'key-chain-error':
        return 'A key-chain error occurred . please check the key chain and try again';
      case 'internal-error':
        return 'An internal authentication error occurred .Please try again later';
      case '':
        return '';
      default:
        return 'sorry sir we have an identified error. Please try again later';
    }
    // switch code
  }
}
