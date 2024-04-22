import 'package:intl/intl.dart';

class MFormatter {
//date formatter
  static String formatdate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-mm-yy').format(date);
  }

//currency formatter
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'am_ET', symbol: '/br').format(amount);
  }

//phonenumber formatter
  static String formatPhoneNumber(String phonenumber) {
    if (phonenumber.length == 10) {
      return '(${phonenumber.substring(0, 3)}) (${phonenumber.substring(3, 6)}) (${phonenumber.substring(6, 9)})';
    } else if (phonenumber.length == 11) {
      return '(${phonenumber.substring(0, 4)}) (${phonenumber.substring(4, 7)}) (${phonenumber.substring(7)})';
    }
    return phonenumber;
  }
}
