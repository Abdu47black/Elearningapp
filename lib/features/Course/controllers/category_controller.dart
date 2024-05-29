import 'package:fidel/data/repositories/categories/category_repostitories.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();
  final _categoryRepository = Get.put(CategoryRepostitory());


  Future<void> fetchCategories() async {
    try {
      //shiow loader while loading categoris

      // fetch categories from data source (firestore,API, etch)

      //update the catgeoris

      //featured categories
    } catch (e) {
      //MLoaders.error
    }
  }
}
