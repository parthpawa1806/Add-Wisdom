import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaplayer/components/pdfreader.dart';

import '../controller/tabscontroller.dart';

class AudioPlayerDetail extends StatelessWidget {
  const AudioPlayerDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
       Center(child: Scaffold(body: Center(child: Text('hello this is 1st page',style: TextStyle(color: Colors.black),))) ),
       Center(child: Scaffold(body: Center(child: Text('hello this is 2nd page',style: TextStyle(color: Colors.black),))),),
    ];
    final _kTabs = <Tab>[
      const Tab(icon: Icon(FeatherIcons.info, color: Colors.white,size: 22,), text: 'Chapters'),
      const Tab(icon: Icon(Icons.play_arrow, color: Colors.white,size: 22,), text: 'Similar Audios ')
    ];
    
    return GetBuilder<TabsController>(
      init: TabsController(),
      builder: (controller) => DefaultTabController(
        length: _kTabs.length,
        child: Scaffold(
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
