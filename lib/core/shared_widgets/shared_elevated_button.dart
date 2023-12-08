
import 'package:cassava_project/core/app_theme/app_colors.dart';
import 'package:flutter/material.dart';

class SharedButton extends StatelessWidget {
  final String title;
  final  Function() onPressed;

   SharedButton({super.key, required this.title, required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return   ElevatedButton(
        onPressed: () {  },
        child: Text(title,
            style:theme.textTheme.titleSmall?.copyWith(
                color: AppColor.whiteColor
            )));
  }
}
