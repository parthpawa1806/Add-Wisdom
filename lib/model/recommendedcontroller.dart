import 'package:get/get.dart';

class reccomendedItem {
  final String title;
  final String imageUrl;

  reccomendedItem({required this.title, required this.imageUrl});
}

class reccomendedModel {
  var items = <reccomendedItem>[].obs;
}
