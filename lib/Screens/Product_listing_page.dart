import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaplayer/components/app_drawer.dart';
import 'package:mediaplayer/components/appbar.dart';
import '../components/product_listing_component.dart';
import '../controller/productlistingcontroller.dart';

class ProductListingPage extends StatelessWidget {
  final ProductController _productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarWidget(),
      drawer: AppDrawer(),
      body: ProductListView(),
    );
  }
}
