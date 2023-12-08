
import 'package:cassava_project/core/app_theme/app_colors.dart';
import 'package:flutter/material.dart';

class SharedAppBars extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  const SharedAppBars({super.key, this.title=""});

  @override
  Widget build(BuildContext context) {
    var theme =Theme.of(context);
    return AppBar(
      leading: const BackButton(),
      title: Text(title,style:theme.textTheme.titleMedium?.copyWith(
        color: AppColor.whiteColor
      ),),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>const Size.fromHeight(50);
}
