

 import 'package:cassava_project/core/app_theme/app_colors.dart';
import 'package:cassava_project/core/app_theme/app_text_styles.dart';
import 'package:flutter/material.dart';


class AppTheme{

    static final AppTextStyle textStyle =AppTextStyle.instance;

   static ThemeData lightTheme = ThemeData(
     useMaterial3: true,
    fontFamily: "Inter",
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
        foregroundColor: AppColor.lightGreenColor,
        backgroundColor: AppColor.lightGreenColor,
      ) ,
    ) ,
    textTheme: TextTheme(
      titleLarge: textStyle.titleLarge,
      titleMedium: textStyle.titleMedium,
      titleSmall: textStyle.titleSmall,
      bodySmall: textStyle.bodySmall,
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
         onBackground: AppColor.blackColor,
         surface: AppColor.cardColor,
         onSurface: AppColor.cardColor

     )
   );

 }