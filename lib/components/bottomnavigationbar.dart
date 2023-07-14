import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BottomNavigationBarWidget extends GetWidget {
  final currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * 1.3;
    return Container(
      margin: EdgeInsets.all(20),
      height: screenWidth * .125,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.15),
            blurRadius: 30,
            offset: Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(50),
      ),
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: screenWidth * .024),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            currentIndex.value = index;
            HapticFeedback.lightImpact();
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Stack(
            children: [
              Obx(
                () => SizedBox(
                  width: screenWidth * .2125,
                  child: Center(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: currentIndex.value == index
                          ? screenWidth * .10
                          : 0,
                      width: currentIndex.value == index
                          ? screenWidth * .1750
                          : 0,
                      decoration: BoxDecoration(
                        color: currentIndex.value == index
                            ? Colors.grey.withOpacity(.2)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: screenWidth * .2125,
                alignment: Alignment.center,
                child: Obx(
                  () => Icon(
                    listOfIcons[index],
                    size: screenWidth * .060,
                    color: currentIndex.value == index
                        ? Colors.black
                        : Colors.black26,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    FeatherIcons.globe,
    FeatherIcons.search,
    FeatherIcons.user,
  ];
}
