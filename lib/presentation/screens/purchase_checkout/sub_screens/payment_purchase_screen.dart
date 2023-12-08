

import 'package:cassava_project/core/app_theme/app_colors.dart';
import 'package:cassava_project/core/constants/app_constant.dart';
import 'package:cassava_project/core/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/shared_widgets/shared_elevated_button.dart';

class PaymentPurchaseScreen extends StatefulWidget {
  const PaymentPurchaseScreen({super.key});

  @override
  State<PaymentPurchaseScreen> createState() => _PaymentPurchaseScreenState();
}

class _PaymentPurchaseScreenState extends State<PaymentPurchaseScreen> {
  @override
  Widget build(BuildContext context) {
    var theme =Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


        Container(
          height: 34,
          width: double.infinity,
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(choosePaymentOptionText,style:theme.textTheme.bodySmall ,),
          ),
        ),


        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(cardPaymentText, style: theme.textTheme.titleSmall?.copyWith(
              color: AppColor.blackColor
          ),),
        ),


        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SvgPicture.asset(ImageUtils.iconAssets(yellowCircleIC)),
              const Gap(14.0),
              Text("123 ******** ****** 089", style: theme.textTheme.titleSmall?.copyWith(
                  color: AppColor.blackColor
              ),),
              const Spacer(),
              SvgPicture.asset(ImageUtils.iconAssets(paymentCardIC)),
              const Gap(30.0)
            ],
          ),
        ),

        const Gap(38.0),

        GestureDetector(
          onTap: (){

          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.add,color:AppColor.yellow ,),
              Text(addCardText, style: theme.textTheme.titleSmall?.copyWith(
                  color: AppColor.yellow
              ),),

              Gap(30.0),
            ],
          ),
        ),


        Gap(120.0),

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
    );
  }
}
