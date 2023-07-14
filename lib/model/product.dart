import 'package:get/get.dart';

class GridViewItem {
  final String title;
  final String imageUrl;

  GridViewItem({required this.title, required this.imageUrl});
}

class GridViewModel {
  var items = <GridViewItem>[].obs;
}
