import 'package:get/get.dart';

class categoryItem {
  final String title;
  final String imageUrl;

  categoryItem({required this.title, required this.imageUrl});
}

class categoryModel {
  var items = <categoryItem>[].obs;
}
