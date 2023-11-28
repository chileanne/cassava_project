
import 'package:cassava_project/core/app_theme/app_colors.dart';
import 'package:cassava_project/core/constants/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/shared_widgets/app_Bar_widgets.dart';
import '../../../../../core/shared_widgets/auth_bottom_navigation_widget.dart';
import '../../../../../core/shared_widgets/text_form_fields.dart';
import '../../../../../core/utils/image_utils.dart';
import '../../../../controllers/create_business_account_controller.dart';

class CreateVendorPasswordScreen extends StatefulWidget {
  const CreateVendorPasswordScreen({super.key});

  @override
  State<CreateVendorPasswordScreen> createState() => _CreateVendorPasswordScreenState();
}

class _CreateVendorPasswordScreenState extends State<CreateVendorPasswordScreen> {
  final CreateBusinessAccountController businessController =Get.find();


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: const SharedAppBars(),
      bottomNavigationBar:
      ShareAuthBottomNavigationWidget(
          leftText:"",
          rightText: "",
          title: signUpText,
          onPressed: () {
            businessController.createVendorPassword();
          }),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 29.0, right: 29.0),
          child:Obx(()=>Form(
            key: businessController.createVendorPasswordFormKey,
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
                  createAccountText,
                  style: theme.textTheme.titleLarge
                      ?.copyWith(color: theme.colorScheme.onBackground),
                ),
                const Gap(26),
                Text(
                  vendorAccountText,
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Gap(10),

                SharedTextFormFields(
                  hideText: businessController.hidePassword.value,
                  suffixIcon: GestureDetector(
                    onTap: (){
                      businessController.hidePassword.value=!businessController.hidePassword.value;
                    },
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 12.0),
                      child: Icon(!businessController.hidePassword.value?Icons.visibility_off:Icons.visibility,color:AppColor.greyColor2 ,) , // myIcon is a 48px-wide widget.
                    ),
                  ),
                  controller:businessController.password,
                  hintText: "Password",
                  keyboardType:TextInputType.visiblePassword,
                  validators: businessController.passwordValidator(),
                ),


                SharedTextFormFields(
                  hideText: businessController.hideConfirmPassword.value,
                  suffixIcon: GestureDetector(
                    onTap: (){
                      businessController.hideConfirmPassword.value=!businessController.hideConfirmPassword.value;
                    },
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 12.0),
                      child: Icon(!businessController.hideConfirmPassword.value?Icons.visibility_off:Icons.visibility,color:AppColor.greyColor2 ,) , // myIcon is a 48px-wide widget.
                    ),
                  ),
                  controller:businessController.confirmPassword,
                  keyboardType:TextInputType.visiblePassword,
                  validators: businessController.confirmPasswordValidator(),
                  hintText: 'Confirm Password',
                ),


              ],
            ),
          )),
        ),
      ),
    );
  }
}
