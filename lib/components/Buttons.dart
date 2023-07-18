import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class BottonsWidget extends StatelessWidget {
  const BottonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
              children: [
                IconButton(onPressed: null, icon: Icon(FeatherIcons.shoppingCart,size: 25,color: Colors.white,)),
                IconButton(onPressed: null, icon: Icon(FeatherIcons.heart,size: 25,color: Colors.white,)),
                IconButton(onPressed: null, icon: Icon(FeatherIcons.share2,size: 25,color: Colors.white,))
         
              ],
            ),
         ),
        SizedBox(
           width: 150,
           height: 50,
          child: ElevatedButton(
            child: Text('Buy'),
            style: ElevatedButton.styleFrom(
              
              elevation: 10,
              shadowColor: Colors.grey,
              primary: Colors.white,
              onPrimary: Colors.black,
              textStyle: const TextStyle(
                   fontSize: 20, 
                   fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          ),
        ),
       ],
    );
}
}