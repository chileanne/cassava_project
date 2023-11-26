import 'package:cassava_project/core/app_theme/app_theme.dart';
import 'package:cassava_project/screens/Authentication/create_accounty_type/create_account_type_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      home: const CreateAccountType(),
    );
  }
}


