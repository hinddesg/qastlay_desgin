import 'package:get/get.dart';

class CategoryModel {
  late String name;
  late String image;

  // Constructor with required fields
  CategoryModel({
    required this.name,
    required this.image,
  });

  // Factory constructor for deserializing from JSON (Map<String, dynamic>)
  factory CategoryModel.fromJson(Map<String, dynamic> map) {
    return CategoryModel(
      name: map['name'] as String? ?? '',  // Provide a default value if null
      image: map['image'] as String? ?? '',  // Provide a default value if null
    );
  }

  // toJson method to serialize the model back to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'image': image,
    };
  }

//   List<CategoryModel> categoryModel = [];
//   var loading = true.obs;
//
// // Example function to fetch categories
//   void fetchCategories() async {
//     loading.value = true;
//     try {
//       // Fetch categories and assign to categoryModel
//       categoryModel = await getCategoriesFromApi();
//     } finally {
//       loading.value = false;
//     }
//   }
}
