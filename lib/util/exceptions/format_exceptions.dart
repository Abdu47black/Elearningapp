class MFormatException implements Exception {
// the associated error message
  final String message;

  const MFormatException(
      [this.message =
          'An expected format error ocurred .Please checky your input']);

  factory MFormatException.fromMessage(String message) {
    return MFormatException(message);
  }
  String get formattedMessage => message;

  factory MFormatException.fromcode(String code) {
    switch (code) {
      case 'invalid-email-format':
        return const MFormatException(
            'The email address format is invalid.Please enter a valid email.');
      case 'invalid-phone-number-format':
        return const MFormatException(
            'The provided phone number format is invalid. Please enter a valid phone number');
      case 'invalid-date-format':
        return const MFormatException(
            'The date  format is invalid.Please enter a valid date format.');
      case 'invalid-debit-card-format':
        return const MFormatException(
            'The card format is invalid.Please enter a valid card format.');
      case 'invalid-numeric-format':
        return const MFormatException(
            'The input should be a valid numeric format.');
      default:
        return const MFormatException(
            'an expected formatting error has occurred');
    }
  }
}
