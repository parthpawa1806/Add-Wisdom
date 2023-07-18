import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/productdetailcontroller.dart';

class ProductCardWidget extends StatelessWidget {
  final ProductDetailController controller = Get.put(ProductDetailController());

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
              height: 300,
              width: 200,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                 controller.items[0].imageUrl,
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
        );
  }
}
