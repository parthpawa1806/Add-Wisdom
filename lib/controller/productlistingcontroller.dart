import 'package:get/get.dart';
import 'package:mediaplayer/model/ProductListingModel.dart';

class ProductController extends GetxController {
  var products = <ProductListing>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Fetch products from API or database and populate the 'products' list
    products.addAll([
      ProductListing(name: 'Product 1', price: 9.99, imageUrl: 'https://plus.unsplash.com/premium_photo-1677151193419-9be7a26c02cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80'),
      ProductListing(name: 'Product 2', price: 19.99, imageUrl: 'https://plus.unsplash.com/premium_photo-1677151193419-9be7a26c02cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80'),
      ProductListing(name: 'Product 3', price: 14.99, imageUrl: 'https://plus.unsplash.com/premium_photo-1677151193419-9be7a26c02cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80'),
      
    ]);
  }
}
