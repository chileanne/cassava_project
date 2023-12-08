
import 'dart:ffi';

import 'package:cassava_project/core/app_theme/app_colors.dart';
import 'package:cassava_project/core/constants/app_constant.dart';
import 'package:cassava_project/core/shared_widgets/app_Bar_widgets.dart';
import 'package:cassava_project/core/shared_widgets/shared_elevated_button.dart';
import 'package:cassava_project/core/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class PurchaseCheckout extends StatefulWidget {
  const PurchaseCheckout({super.key});

  @override
  State<PurchaseCheckout> createState() => _PurchaseCheckoutState();
}

class _PurchaseCheckoutState extends State<PurchaseCheckout> {
  @override
  Widget build(BuildContext context) {
    var theme =Theme.of(context);
    return Scaffold(
      appBar: SharedAppBars(
        title: "Checkout",
      ),


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Container(
            height: 34,
            width: double.infinity,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(yourOrderText,style:theme.textTheme.bodySmall ,),
            ),
          ),
          
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(subtotalText, style: theme.textTheme.titleSmall?.copyWith(
                  color: AppColor.blackColor
                ),),

                Text("100", style: theme.textTheme.titleSmall?.copyWith(
                    color: AppColor.blackColor
                ),),
              ],
            ),
          ),



          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(deliveryFeeText, style: theme.textTheme.titleSmall?.copyWith(
                    color: AppColor.blackColor
                ),),

                Text("100", style: theme.textTheme.titleSmall?.copyWith(
                    color: AppColor.blackColor
                ),),
              ],
            ),
          ),


          Divider(color: AppColor.blackColor,),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(totalText, style: theme.textTheme.titleSmall?.copyWith(
                    color: AppColor.blackColor
                ),),

                Text("100", style: theme.textTheme.titleSmall?.copyWith(
                    color: AppColor.blackColor
                ),),
              ],
            ),
          ),
          const Gap(4.0),

          Container(
            height: 34,
            width: double.infinity,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(addressDetailText,style:theme.textTheme.bodySmall ,),
            ),
          ),
          const Gap(4.0),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Company Name", style: theme.textTheme.titleSmall?.copyWith(
                color: AppColor.blackColor
            ),),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Address", style: theme.textTheme.titleSmall?.copyWith(
                color: AppColor.blackColor
            ),),
          ),

          const Gap(4.0),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Phon Number", style: theme.textTheme.titleSmall?.copyWith(
                color: AppColor.blackColor
            ),),
          ),

          const Gap(4.0),

          Container(
            height: 34,
            width: double.infinity,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(choosePaymentOptionText,style:theme.textTheme.bodySmall ,),
            ),
          ),

          const Gap(4.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("123 ****** ***** 09", style: theme.textTheme.titleSmall?.copyWith(
                color: AppColor.blackColor
            ),),
          ),

          const Gap(4.0),

          Container(
            height: 34,
            width: double.infinity,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(deliveryFeeText,style:theme.textTheme.bodySmall ,),
            ),
          ),

          const Gap(4.0),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("123", style: theme.textTheme.titleSmall?.copyWith(
                color: AppColor.blackColor
            ),),
          ),




          const Gap(30.0),

          Padding(
            padding: const EdgeInsets.only(left:26.0,right: 32.0),
            child: SizedBox(
              width: double.infinity,
              height: 50.0,
              child: SharedButton(
                  title:continueText,
                  onPressed: (){

                  }),
            ),
          )



















        ],
      ),
    );
  }
}
