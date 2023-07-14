import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: null, icon: Icon(FeatherIcons.menu,color: Colors.white,)),
      backgroundColor: Colors.black12,
      elevation: 0,
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
    );
  }
}
