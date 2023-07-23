import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaplayer/components/app_drawer.dart';
import 'package:mediaplayer/components/appbar.dart';
import '../controller/productlistingcontroller.dart';

class ProductListView extends StatelessWidget {
  final ProductController _productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: Obx(() {
          if (_productController.products.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            restorationId: 'cards_demo_list_view',
            padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
            itemCount: _productController.products.length,
            itemBuilder: (context, index) {
              final product = _productController.products[index];
              return Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: SizedBox(
                  height: 250, // Set the desired height of the card
                  child: Card(
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0), // Rounded corners
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                          child: SizedBox(
                            height: 150, // Set the desired height of the image box
                            width: 300, // Set the desired width of the image box
                            child: Image.network(
                              product.imageUrl,
                              fit: BoxFit.fill, // Adjust the image inside the box
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(product.name),
                        Text('\$${product.price.toStringAsFixed(2)}'),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }),
      );
  }
}
