import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaplayer/Screens/video_page.dart';
import 'package:mediaplayer/components/app_drawer.dart';
import 'package:mediaplayer/components/appbar.dart';
import '../controller/productlistingcontroller.dart';

class SimilarItemView extends StatelessWidget {
  final ProductController _productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: Obx(() {
          if (_productController.products.isEmpty) {
            return const Center(child: CircularProgressIndicator());
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
                  height: 150, // Set the desired height of the card
                  child: Card(
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0), // Rounded corners
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)),
                          child: SizedBox(
                            height: 125, // Set the desired height of the image box
                            width: 100, // Set the desired width of the image box
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.network(
                                product.imageUrl,
                                fit: BoxFit.fill, // Adjust the image inside the box
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(product.name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Text('\$${product.price.toStringAsFixed(2)}'),
                            
                          ],
                        ),
                        const SizedBox(width: 80,),
                        IconButton(onPressed: null, icon: const Icon(FeatherIcons.playCircle,size: 40,color: Colors.black,))
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
