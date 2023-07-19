import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mediaplayer/Screens/audio_page.dart';
import 'package:mediaplayer/Screens/books_screen.dart';
import 'package:mediaplayer/Screens/productdetail_screen.dart';
import 'package:mediaplayer/Screens/video_page.dart';
import 'package:mediaplayer/components/app_drawer.dart';
import 'package:mediaplayer/components/appbar.dart';
import 'package:mediaplayer/components/bottomnavigationbar.dart';
import 'package:mediaplayer/components/categories.dart';
import 'package:mediaplayer/components/downloads.dart';
import 'package:mediaplayer/components/popular.dart';
import 'package:mediaplayer/components/recommendations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final List<String> drawerItems = [
    'HomePage',
    'Product Detail Page', 
    'VideoPlayer',
     'AudioPlayer',
     'PdfViewer' 
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBarWidget(),
              drawer: AppDrawer(),
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Column(
          children: [
           const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Popular This Week',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                )
              ],
            ),
           PopularWidget(),
        const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Downloads',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ],
            ),
          GridViewWidget(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Categories',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ],
            ),
           CategoryWidget(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Recommended',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ],
            ),
           reccomendedWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    ));
  }
}