import 'package:get/get.dart';

class ProductDetailItem {
  final String title;
  final String imageUrl;
  final String description;
  final String category;
  final String review;
  final String author;

  ProductDetailItem({required this.title, required this.imageUrl,required this.description,required this.category,required this.review,required this.author});
}

class ProductDetailModel {
  var items = <ProductDetailItem>[].obs;
}