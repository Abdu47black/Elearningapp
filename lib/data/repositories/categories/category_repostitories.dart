import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fidel/features/Course/models/category_models.dart';
import 'package:fidel/util/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CategoryRepostitory extends GetxController {
  static CategoryRepostitory get instance => Get.find();

  /// variables
  final _db = FirebaseFirestore.instance;

  /// get all categories
  // Future<List<CategoryModel>> getAllCategories() async {
  //   try {
  //     final snapshot = await _db.collection('Categories').get();
  //     final list = snapshot.docs
  //         .map((documnet) => CategoryModel.fromSnapshot(documnet))
  //         .toList();
  //     return list;
  //   } on FirebaseException catch (e) {
  //     throw MFirebaseException(e.code).message;
  //   } on PlatformException catch (e) {
  //     //throw platform exception
  //     throw MFirebaseException(e.code).message;
  //   } catch (e) {
  //     throw 'something went wrong. please try again';
  //   }
  // }

  ///

  /// Get Sub categories

  /// UPload Categories to the Cloud Firebase
}
