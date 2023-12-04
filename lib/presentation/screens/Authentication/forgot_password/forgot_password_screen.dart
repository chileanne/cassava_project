

import 'package:cassava_project/core/app_theme/app_colors.dart';
import 'package:cassava_project/core/constants/app_constant.dart';
import 'package:cassava_project/presentation/controllers/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/shared_widgets/app_Bar_widgets.dart';
import '../../../../../core/shared_widgets/auth_bottom_navigation_widget.dart';
import '../../../../../core/shared_widgets/text_form_fields.dart';
import '../../../../../core/utils/image_utils.dart';
import '../../../../core/app_routes/app_routes.dart';
import '../../../controllers/forgot_password_controller.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final ForgotPasswordController forgetController =Get.find();


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: const SharedAppBars(),
      bottomNavigationBar:
      ShareAuthBottomNavigationWidget(
          leftText:notHaveAccountText,
          rightText:signUpText,
          rightTextOnPressed:(){
            Get.toNamed(AppRoutes.createAccountType);
          },
          title: "Reset Password",
          onPressed: () {
            forgetController.submit();
          }),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 29.0, right: 29.0),
          child:Form(
            key: forgetController.forgetPasswordFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(
                  24,
                ),
                Image.asset(ImageUtils.imageeAssets(splashImage)),
                const SizedBox(
                  height: 30,
                ),



                Text(
                  "Forgot Password",
                  style: theme.textTheme.titleLarge
                      ?.copyWith(color: theme.colorScheme.onBackground),
                ),




                const Gap(10),

                SharedTextFormFields(
                  controller:forgetController.email,
                  keyboardType:TextInputType.emailAddress,
                  validators:forgetController.emailValidator(),
                  hintText: 'Email',
                ),









              ],
            ),
          ),
        ),
      ),
    );
  }
}
