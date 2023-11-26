

 import 'package:cassava_project/core/app_theme/app_colors.dart';
import 'package:cassava_project/core/app_theme/app_text_styles.dart';
import 'package:flutter/material.dart';


class AppTheme{

    static final AppTextStyle textStyle =AppTextStyle.instance;

   static ThemeData lightTheme = ThemeData(
    fontFamily: "Roboto",
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: AppColor.darkGreenColor
    ),
    elevatedButtonTheme:ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0)
        ),
        foregroundColor: AppColor.lightGreenColor
      ) ,
    ) ,
    textTheme: TextTheme(
      titleLarge: textStyle.titleLarge,
      titleMedium: textStyle.titleMedium,
      titleSmall: textStyle.titleSmall
    ),
     colorScheme: ColorScheme(
         brightness: Brightness.light,
         primary: AppColor.whiteColor,
         onPrimary: AppColor.lightGreenColor,
         secondary: AppColor.darkGreenColor,
         onSecondary: AppColor.darkerGreenColor,
         error: AppColor.errorColor,
         onError:AppColor.errorColor,
         background: AppColor.whiteColor,
         onBackground: AppColor.whiteColor,
         surface: AppColor.cardColor,
         onSurface: AppColor.cardColor

     )
   );

 }