

import 'package:cassava_project/core/app_routes/app_routes.dart';
import 'package:cassava_project/presentation/screens/Authentication/create_accounty_type/bindings/create_account_binding.dart';
import 'package:cassava_project/presentation/screens/Authentication/forgot_password/forgot_password_screen.dart';
import 'package:cassava_project/presentation/screens/Authentication/sign_in/sing_in_screen.dart';
import 'package:cassava_project/presentation/screens/Authentication/signup/customer_account/create_customer_account_screen.dart';
import 'package:cassava_project/presentation/screens/Authentication/signup/vendor_account/create_vendor_account_screen.dart';
import 'package:cassava_project/presentation/screens/Authentication/signup/vendor_account/create_vendor_password_screen.dart';
import 'package:cassava_project/presentation/screens/Authentication/signup/vendor_account/vendor_account_type_screen.dart';
import 'package:cassava_project/presentation/screens/dashboard/dashboard_screen.dart';
import 'package:cassava_project/presentation/screens/purchase/purchase_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../presentation/screens/Authentication/create_accounty_type/create_account_type_screen.dart';

Duration get transitionDuration => const Duration(milliseconds: 400);

class AppPages {

 static var list =[


   GetPage(
     name: AppRoutes.signIn,
     page: () => const SignInScreen(),
     transition: Transition.fadeIn,
     transitionDuration: transitionDuration,
   ),



   GetPage(
     name: AppRoutes.createCustomerAccount,
     page: () => const CreateCustomerAccount(),
     transition: Transition.fadeIn,
     transitionDuration: transitionDuration,
   ),



   GetPage(
     name: AppRoutes.createVendorPassword,
     page: () => const CreateVendorPasswordScreen(),
     transition: Transition.fadeIn,
     transitionDuration: transitionDuration,
   ),



   GetPage(
     name: AppRoutes.createAccountType,
     binding: CreateAccountBindings(),
     page: () => const CreateAccountType(),
     transition: Transition.fadeIn,
     transitionDuration: transitionDuration,
   ),


   GetPage(
     name: AppRoutes.createVendorAccountType,
     page: () => const VendorAccountTypeScreen(),
     transition: Transition.fadeIn,
     transitionDuration: transitionDuration,
   ),

   GetPage(
     name: AppRoutes.createVendorAccount,
     page: () => const CreateVendorAccountScreen(),
     transition: Transition.fadeIn,
     transitionDuration: transitionDuration,
   ),


   GetPage(
     name: AppRoutes.forgetPassword,
     page: () => const ForgotPasswordScreen(),
     transition: Transition.fadeIn,
     transitionDuration: transitionDuration,
   ),


   GetPage(
     name: AppRoutes.dashboard,
     page: () => const DashboardScreen(),
     transition: Transition.fadeIn,
     transitionDuration: transitionDuration,
   ),


   GetPage(
     name: AppRoutes.purchase,
     page: () => const PurchaseScreen(),
     transition: Transition.fadeIn,
     transitionDuration: transitionDuration,
   ),

 ];

}