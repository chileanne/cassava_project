
import 'package:cassava_project/core/app_theme/app_colors.dart';
import 'package:cassava_project/core/constants/app_constant.dart';
import 'package:cassava_project/core/shared_widgets/app_Bar_widgets.dart';
import 'package:cassava_project/core/shared_widgets/shared_elevated_button.dart';
import 'package:cassava_project/presentation/controllers/purchase_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../core/shared_widgets/drop_down_form_field.dart';
import '../../../core/shared_widgets/text_form_fields.dart';

class PurchaseScreen extends StatefulWidget {
  const PurchaseScreen({super.key});

  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  PurchaseController purchaseController =Get.find();



  @override
  Widget build(BuildContext context) {
    var theme =Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar:const SharedAppBars(title: purchaseText,) ,

      body: Obx(()=>Column(
        children: [

          Container(
            width: double.infinity,
            color: AppColor.greyColor3,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0,top: 12,bottom: 12),
              child: Text("Place Order",style:theme.textTheme.titleSmall?.copyWith(
                color: AppColor.darkGreyColor
              ) ,),
            ),
          ),

          const Gap(24),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productText,style:theme.textTheme.titleSmall?.copyWith(
                    color: AppColor.greyColor1
                ) ,),
                const Gap(2),
                SharedTextFormFields(
                  readOnly: true,
                  keyboardType: TextInputType.text,
                  controller: purchaseController.product,
                  validators: (String? value) {  },
                  hintText: 'Cassava',),
              ],
            ),
          ),

          const Gap(24),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(quantityText,style:theme.textTheme.titleSmall?.copyWith(
                    color: AppColor.greyColor1
                ) ,),
                const Gap(2),
                SharedDropDownFormFileds(
                  items: purchaseController.dropdownItems,
                  value: purchaseController.selectedQuantity.value,
                  onChanged: (value) {
                     purchaseController.selectedQuantity.value=value;
                  },),
              ],
            ),
          ),

          const Gap(24),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(amountText,style:theme.textTheme.titleSmall?.copyWith(
                    color: AppColor.greyColor1
                ) ,),
                const Gap(2),
                SharedTextFormFields(
                  readOnly: true,
                  keyboardType: TextInputType.number,
                  controller: purchaseController.amount,
                  validators: (String? value) {  },
                  hintText: 'Amount',),
              ],
            ),
          ),

          const Gap(30),

           SizedBox(
             width: 320,
             height: 50,
             child: SharedButton(
                 title: checkOutProceedText,
                 onPressed: (){

                 },),
           )
        ],
      ),
    ));
  }



}
