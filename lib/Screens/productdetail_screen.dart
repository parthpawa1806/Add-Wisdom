import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mediaplayer/components/appbar.dart';
import 'package:mediaplayer/components/detailtabscomponent.dart';
import 'package:mediaplayer/components/imagecard.dart';

import '../components/Buttons.dart';
import '../controller/productdetailcontroller.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductDetailController controller = Get.put(ProductDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarWidget(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 300,
              width: 200,
              child: ProductCardWidget()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(controller.items[0].title,style: TextStyle(fontSize: 40,color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(controller.items[0].category,style: TextStyle(fontSize: 15,color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(controller.items[0].review,style: TextStyle(fontSize: 15,color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(controller.items[0].author,style: TextStyle(fontSize: 15,color: Colors.white),),
                    ),
                    BottonsWidget(),
                  ],
                ),
              )
          ],
          ),
          Expanded(child: DetailTabsDetail())
        ],
      ),
    );
  }
}