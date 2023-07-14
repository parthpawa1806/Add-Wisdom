import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBarWidget(),
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