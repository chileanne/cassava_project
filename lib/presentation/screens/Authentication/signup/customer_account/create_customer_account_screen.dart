
import 'package:cassava_project/core/shared_widgets/app_Bar_widgets.dart';
import 'package:cassava_project/core/shared_widgets/auth_bottom_navigation_widget.dart';
import 'package:cassava_project/core/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../core/constants/app_constant.dart';
import '../../../../../core/shared_widgets/text_form_fields.dart';
import '../../../../controllers/create_customer_account_controller.dart';




class CreateCustomerAccount extends StatefulWidget {
  const CreateCustomerAccount({super.key});

  @override
  State<CreateCustomerAccount> createState() => _CreateCustomerAccountState();
}

class _CreateCustomerAccountState extends State<CreateCustomerAccount> {
  final CreateCustomerAccountController customerController =Get.find();


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: const SharedAppBars(),
      bottomNavigationBar:
          ShareAuthBottomNavigationWidget(
              leftText: haveAccountText,
              rightText:signInText,
              title:signUpText,
              rightTextOnPressed:(){
                Get.toNamed(AppRoutes.signIn);
              },
              onPressed: () {
                customerController.submit();
              }),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 29.0, right: 29.0),
          child:Form(
            key: customerController.customerAccountFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(
                  24,
                ),
                Image.asset(ImageUtils.imageeAssets(splashImageIM)),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Create your Account",
                  style: theme.textTheme.titleLarge
                      ?.copyWith(color: theme.colorScheme.onBackground),
                ),
                const Gap(26),
                Text(
                  "Customer Account",
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Gap(10),

                SharedTextFormFields(
                  controller:customerController.name,
                  hintText: "Name",
                  keyboardType:TextInputType.text,
                  validators: customerController.nameValidator(),
                ),


                SharedTextFormFields(
                    controller:customerController.email,
                    keyboardType:TextInputType.emailAddress,
                    validators: customerController.emailValidator(),
                    hintText: 'Email',
                ),

                SharedTextFormFields(
                    controller:customerController.phoneNumber,
                    keyboardType:TextInputType.phone,
                    validators: customerController.phoneValidator(),
                  hintText: 'Phone Number',
                ),

                SharedTextFormFields(
                    controller:customerController.password,
                    keyboardType:TextInputType.visiblePassword,
                    validators:customerController.passwordValidator(),
                  hintText: 'Password',
                ),


                SharedTextFormFields(
                   hintText: "Confirm Password",
                    controller:customerController.confirmPassword,
                    keyboardType:TextInputType.visiblePassword,
                    validators:customerController.confirmPasswordValidator(),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
