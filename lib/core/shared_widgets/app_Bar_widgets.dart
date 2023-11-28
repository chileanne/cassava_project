
import 'package:flutter/material.dart';

class SharedAppBars extends StatelessWidget implements PreferredSizeWidget{
  const SharedAppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const BackButton(),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>const Size.fromHeight(50);
}
