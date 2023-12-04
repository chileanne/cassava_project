
import 'package:cassava_project/core/app_routes/app_routes.dart';
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


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final SignInController signInController =Get.find();


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
          title: signInText,
          onPressed: () {
            signInController.submit();
          }),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 29.0, right: 29.0),
          child:Obx(()=>Form(
            key: signInController.signInFormKey,
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
                  "Welcome",
                  style: theme.textTheme.titleLarge
                      ?.copyWith(color: theme.colorScheme.onBackground),
                ),
                const Gap(26),
                Text(
                  signInText,
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Gap(10),

                SharedTextFormFields(
                  controller:signInController.email,
                  keyboardType:TextInputType.emailAddress,
                  validators:signInController.emailValidator(),
                  hintText: 'Email',
                ),

                const Gap(10),


                SharedTextFormFields(
                  hideText: signInController.hidePassword.value,
                  suffixIcon: GestureDetector(
                    onTap: (){
                      signInController.hidePassword.value=!signInController.hidePassword.value;
                    },
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 12.0),
                      child: Icon(!signInController.hidePassword.value?Icons.visibility_off:Icons.visibility,color:AppColor.greyColor2 ,) , // myIcon is a 48px-wide widget.
                    ),
                  ),
                  controller:signInController.password,
                  hintText: "Password",
                  keyboardType:TextInputType.visiblePassword,
                  validators: signInController.passwordValidator(),
                ),

                const Gap(10),

                GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoutes.forgetPassword);
                  },
                  child: Text(
                    forgotPasswordText,
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: theme.colorScheme.onPrimary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),



              ],
            ),
          )),
        ),
      ),
    );
  }
}
