


import 'package:cassava_project/core/app_routes/app_routes.dart';
import 'package:cassava_project/core/app_theme/app_colors.dart';
import 'package:cassava_project/core/shared_widgets/app_Bar_widgets.dart';
import 'package:cassava_project/core/shared_widgets/auth_bottom_navigation_widget.dart';
import 'package:cassava_project/core/shared_widgets/drop_down_form_field.dart';
import 'package:cassava_project/core/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_constant.dart';
import '../../../controllers/create_account_type_controller.dart';



class CreateAccountType extends StatefulWidget {
  const CreateAccountType({super.key});

  @override
  State<CreateAccountType> createState() => _CreateAccountTypeState();
}

class _CreateAccountTypeState extends State<CreateAccountType> {

  final CreateAccountTypeController _createAccountController = Get.find();


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const SharedAppBars() ,
      bottomNavigationBar: ShareAuthBottomNavigationWidget(
          leftText:haveAccountText,
          rightText:signInText,
          rightTextOnPressed:(){
             Get.toNamed(AppRoutes.signIn);
          },
          title: nextText,
          onPressed:(){
                 _createAccountController.submit();
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 29.0,right: 29.0),
              child: Form(
                key: _createAccountController.accountForm,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                const SizedBox(height: 24,),

                Image.asset(ImageUtils.imageeAssets(splashImageIM)),

                const SizedBox(height: 30,),

                Text("Create your Account",
                  style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.onBackground
                ),),

                const SizedBox(height: 26,),


                Text("What best describes you?",
                  style: theme.textTheme.titleLarge?.copyWith(
                      color: AppColor.greyColor1,
                    fontWeight: FontWeight.w700,
                  ),),


                    const Gap(10),

                       SharedDropDownFormFileds(
                         items: _createAccountController.dropdownItems,
                         value: _createAccountController.selectedValue.value,
                         onChanged: (v){
                           _createAccountController.selectedValue.value=v;
                         },
                       )


                          ],
                        ),
              ),
            )

        ),



        ],
      ),
    );
  }



}
