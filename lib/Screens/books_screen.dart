import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mediaplayer/components/pdfreader.dart';
import '../controller/tabscontroller.dart';

class BookReadPage extends StatelessWidget {
  const BookReadPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
       Center(child: PdfWidget()),
       Center(child: Scaffold(body: Text('hello this is 2nd page',style: TextStyle(color: Colors.black),)),),
    ];
    final _kTabs = <Tab>[
      const Tab(icon: Icon(FeatherIcons.bookOpen, color: Colors.white), text: 'Read'),
      const Tab(icon: Icon(Icons.info, color: Colors.white), text: 'Detail')
    ];
    
    return GetBuilder<TabsController>(
      init: TabsController(),
      builder: (controller) => DefaultTabController(
        length: _kTabs.length,
        child: Scaffold(
        appBar: AppBar(
       leading: IconButton(onPressed: null, icon: Icon(FeatherIcons.menu,color: Colors.white,)),
      backgroundColor: Colors.black,
      elevation: 5,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: InkWell(
            onTap: () {
              // Add your onTap logic here
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('lib/assets/images/bgimageee.jpg'),
              radius: 35,
            ),
          ),
        ),
      ],
            bottom: TabBar(
              labelColor: Colors.white, 
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: _kTabs,
              controller: controller.tabController,
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
