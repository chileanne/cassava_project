import 'package:cassava_project/core/app_routes/app_routes.dart';
import 'package:cassava_project/core/app_theme/app_theme.dart';
import 'package:cassava_project/core/bindings/app_bindings.dart';
import 'package:cassava_project/presentation/screens/Authentication/create_accounty_type/bindings/create_account_binding.dart';
import 'package:cassava_project/presentation/screens/Authentication/create_accounty_type/create_account_type_screen.dart';
import 'package:cassava_project/presentation/screens/Authentication/forgot_password/forgot_password_screen.dart';
import 'package:cassava_project/presentation/screens/Authentication/sign_in/sing_in_screen.dart';
import 'package:cassava_project/presentation/screens/Authentication/signup/vendor_account/create_vendor_account_screen.dart';
import 'package:cassava_project/presentation/screens/Authentication/signup/vendor_account/create_vendor_password_screen.dart';
import 'package:cassava_project/presentation/screens/Authentication/signup/vendor_account/vendor_account_type_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/app_routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cassava',
      theme: AppTheme.lightTheme,
      getPages: AppPages.list,
      initialRoute: AppRoutes.createAccountType,
     // initialBinding: CreateAccountBindings(),
    );
  }
}


