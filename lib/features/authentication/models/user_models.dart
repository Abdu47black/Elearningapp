import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fidel/util/formatters/formatter.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String username;

  String phoneNumber;
  final String email;
  String profilepicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.username,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    required this.profilepicture,
  });

  static UserModel empty() => UserModel(
      id: '',
      firstName: '',
      lastName: '',
      phoneNumber: '',
      email: '',
      username: '',
      profilepicture: '');

  String get fullName => '$firstName  $lastName';

  String get formattedPhoneNo => MFormatter.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(fullName) => fullName.split("");

  static String generateUserName(fullname) {
    List<String> nameParts = fullname.split('');

    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

    String camelCaseusername = '$firstName$lastName';
    String usernameWithPrefix = "owt_$camelCaseusername";
    return usernameWithPrefix;
  }

  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'UserName': username,
      'PhoneNumber': phoneNumber,
      'Email': email,
      'Profilepictures': '',
    };
  }

  /// Map JSON orinted document snapshot from firebase to useModel

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;

      //Map JSON Record to the Model
      return UserModel(
        id: document.id,
        firstName: data['FirstName'] ?? '',
        lastName: data['LastName'] ?? '',
        username: data['UserName'] ?? '',
        email: data['Email'] ?? '',
        phoneNumber: data['PhoneNumber'] ?? '',
        profilepicture: data['ProfilePicture'] ?? '',
      );

      //map json record to the model
    } else {
      return UserModel.empty();
    }
  }
}
