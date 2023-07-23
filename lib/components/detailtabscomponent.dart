import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaplayer/components/popular.dart';
import 'package:mediaplayer/components/product_listing_component.dart';
import 'package:mediaplayer/components/similar_items_component.dart';

import 'package:mediaplayer/controller/detailtabcontroller.dart';

class DetailTabsDetail extends StatelessWidget {
  const DetailTabsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
       Center(child: Scaffold(body: Center(child: Text('hello this is 1st page',style: TextStyle(color: Colors.black),))) ),
       Center(child: Scaffold(body: Center(child: Text('hello this is 2nd page',style: TextStyle(color: Colors.black),))),),
       Center(child: Scaffold(
        backgroundColor: Colors.black,
        body: SimilarItemView()),)

    ];
    final _kTabs = <Tab>[
      const Tab(icon: Icon(FeatherIcons.info, color: Colors.white,size: 22,), text: 'About'),
      const Tab(icon: Icon(FeatherIcons.barChart, color: Colors.white,size: 22,), text: 'Review'),
      const Tab(icon: Icon(FeatherIcons.playCircle, color: Colors.white,size: 22,), text: 'Similar Items')
    ];
    
    return GetBuilder<DetailTabsController>(
      init: DetailTabsController(),
      builder: (controller) => DefaultTabController(
        length: _kTabs.length,
        child: Scaffold(
          backgroundColor: Colors.white,
        appBar: PreferredSize(
               preferredSize: Size.fromHeight(kToolbarHeight),
               child: Container(
                color: Colors.black,
                 child: TabBar(
                  labelColor: Colors.white, 
                  unselectedLabelColor: Colors.white,
                  indicatorColor: Colors.white,
                  tabs: _kTabs,
                  controller: controller.tabController,
                           ),
               ),
             ),
        
          body: TabBarView(
            children: _kTabPages,
            controller: controller.tabController,
          ),
        ),
      ),
    );
  }
}
