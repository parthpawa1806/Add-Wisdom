import 'package:get/get.dart';

class PopularItem {
  final String title;
  final String imageUrl;

  PopularItem({required this.title, required this.imageUrl});
}

class PopularModel {
  var items = <PopularItem>[].obs;
}