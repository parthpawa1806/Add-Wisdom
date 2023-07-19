import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mediaplayer/Screens/audio_page.dart';
import 'package:mediaplayer/Screens/books_screen.dart';
import 'package:mediaplayer/Screens/home_screen.dart';

late Box pdf;
late Box videos;
late Box audios;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "poppins"
      ),
      home: FutureBuilder(
        builder: (context,dataSnapShot){
          return HomePage();
        }
        ),
    );
  }
}