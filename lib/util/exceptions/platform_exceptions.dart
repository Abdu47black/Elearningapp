class MPlatformException implements Exception {
  /// ----the error code assosiated  with the exception
  final String code;

  MPlatformException(this.code);
  String get message {
    if (code case 'email-already-in-use') {
      return 'Them email address is already registered , Please use a diffed email';
    } else {
      return ("Unknown error occurred");
    }
  }
}
