import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class ShareAuthBottomNavigationWidget extends StatelessWidget {
  final String title;
  final String leftText;
  final String rightText;
  final Null Function() onPressed;

  const ShareAuthBottomNavigationWidget({super.key,required this.title, required this.onPressed, required this.leftText, required this.rightText});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      width: size.width,
      height: 110.0,
      color: theme.colorScheme.onPrimary,
      child: Column(
        children: [




          Container(
            height: 50,
            decoration: BoxDecoration(
              color: theme.colorScheme.onSecondary,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(leftText,
                    style: theme.textTheme.titleSmall?.copyWith(
                        color: theme.colorScheme.primary
                    ),),
                  const Gap(4),
                  Text(rightText,
                    style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: theme.colorScheme.primary
                    ),),

                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium
                      ?.copyWith(color: theme.colorScheme.primary),
                ),
                IconButton(
                    onPressed:onPressed,
                    icon: Icon(
                      Icons.arrow_forward_rounded,
                      color: theme.colorScheme.primary,
                      size: 28.0,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
