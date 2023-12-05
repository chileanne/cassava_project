
import 'package:cassava_project/core/shared_widgets/app_Bar_widgets.dart';
import 'package:cassava_project/core/shared_widgets/auth_bottom_navigation_widget.dart';
import 'package:cassava_project/core/utils/image_utils.dart';
import 'package:cassava_project/presentation/controllers/create_vendor_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../core/constants/app_constant.dart';
import '../../../../../core/shared_widgets/text_form_fields.dart';
import '../../../../controllers/create_customer_account_controller.dart';




class CreateVendorAccountScreen extends StatefulWidget {
  const CreateVendorAccountScreen({super.key});

  @override
  State<CreateVendorAccountScreen> createState() => _CreateVendorAccountScreenState();
}

class _CreateVendorAccountScreenState extends State<CreateVendorAccountScreen> {
  final CreateVendorAccountController businessController =Get.find();


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: const SharedAppBars(),
      bottomNavigationBar:
      ShareAuthBottomNavigationWidget(
          leftText:"",
          rightText: "",
          rightTextOnPressed:(){},
          title: nextText,
          onPressed: () {
            businessController.createVendor();
          }),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 29.0, right: 29.0),
          child:Form(
            key: businessController.createVendorFormKey,
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
                  controller:businessController.name,
                  hintText: "Name",
                  keyboardType:TextInputType.text,
                  validators: businessController.nameValidator(),
                ),


                SharedTextFormFields(
                  controller:businessController.email,
                  keyboardType:TextInputType.emailAddress,
                  validators: businessController.emailValidator(),
                  hintText: 'Email',
                ),

                SharedTextFormFields(
                  controller:businessController.phoneNumber,
                  keyboardType:TextInputType.phone,
                  validators: businessController.phoneValidator(),
                  hintText: 'Phone Number',
                ),

                SharedTextFormFields(
                  controller:businessController.address,
                  keyboardType:TextInputType.text,
                  validators:businessController.addressValidator(),
                  hintText: 'Address',
                ),


                SharedTextFormFields(
                  hintText: "City",
                  controller:businessController.city,
                  keyboardType:TextInputType.text,
                  validators:businessController.cityValidator()),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
