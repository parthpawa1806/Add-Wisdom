import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_seekbar/seekbar/seekbar.dart';

class AudioPlayerComponent extends StatelessWidget {
  const AudioPlayerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Center(
              child: SizedBox(
                height: 300,
                width: 300,
                child:Card(
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
               ),
                child: Container(
                  decoration:  BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.0,),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('lib/assets/images/books.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                padding: EdgeInsets.all(10.0),
                child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Text(''),
                 ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.all(10.0),
             color: Colors.white,
             shadowColor: Colors.white,
             borderOnForeground: true,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child:  Column(
                children: [
                  Slider(
                min: 0.0,
                max: 100.0,
                value: 20,
                onChanged: (value) {
                },
            ),
              SizedBox(height: 10,),

                  SizedBox(
                    height: 100,width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                              IconButton(onPressed: null, icon: Icon(
                          Icons.loop_outlined,
                          color:Colors.white,
                          size: 25,
                        )),
                          IconButton(onPressed: null, icon: Icon(
                          FeatherIcons.skipBack,
                          color:Colors.white,
                          size: 40,
                        )),
                          IconButton(onPressed: null, icon: Icon(
                         FeatherIcons.playCircle,
                          color:Colors.white,
                          size: 80,
                        )),
                          IconButton(onPressed: null, icon: Icon(
                          FeatherIcons.skipForward,
                          color:Colors.white,
                          size: 40,
                        )),
                          IconButton(onPressed: null, icon: Icon(
                          Icons.speed_outlined,
                          color:Colors.white,
                          size: 25,
                        ))
                        
                      ],
                    ),
                  )
                ],
              )
            )
          ],
        );
  }
}