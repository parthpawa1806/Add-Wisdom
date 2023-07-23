import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Screens/audio_page.dart';
import '../Screens/books_screen.dart';
import '../Screens/home_screen.dart';
import '../Screens/productdetail_screen.dart';
import '../Screens/video_page.dart';

class AppDrawer extends StatelessWidget {
  final List<String> drawerItems = [
    'HomePage',
    'Product Detail Page', 
    'VideoPlayer',
    'AudioPlayer',
    'PdfViewer',
  ];

  void navigateToPage(int index) {
    switch (index) {
      case 0:
        Get.offAll(HomePage());
        break;
      case 1:
        Get.offAll(ProductDetailPage());
        break;
      case 2:
        Get.offAll(VideoPage());
        break;
      case 3:
        Get.offAll(AudioPage());
        break;
      case 4:
        Get.offAll(BookReadPage());
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView.builder(
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          
          return ListTile(
            title: Text(drawerItems[index]),
            onTap: () {
              // Close the drawer when an item is tapped
              Navigator.of(context).pop();
              // Navigate to the desired page using GetX route management
              navigateToPage(index);
            },
          );
        },
      ),
    );
  }
}
