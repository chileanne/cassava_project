

import 'package:flutter/material.dart';

import '../../../../core/app_theme/app_colors.dart';
import '../../../../core/constants/app_constant.dart';

class DeliveryPurchaseScreen extends StatefulWidget {
  const DeliveryPurchaseScreen({super.key});

  @override
  State<DeliveryPurchaseScreen> createState() => _DeliveryPurchaseScreenState();
}

class _DeliveryPurchaseScreenState extends State<DeliveryPurchaseScreen> {
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
            child: Text(addressDetailText,style:theme.textTheme.bodySmall ,),
          ),
        ),


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



        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Phone Number", style: theme.textTheme.titleSmall?.copyWith(
              color: AppColor.blackColor
          ),),
        ),



        Container(
          height: 34,
          width: double.infinity,
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(deliveryFeeText,style:theme.textTheme.bodySmall ,),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Amount", style: theme.textTheme.titleSmall?.copyWith(
              color: AppColor.blackColor
          ),),
        ),



        Container(
          height: 34,
          width: double.infinity,
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(deliveryScheduleText,style:theme.textTheme.bodySmall ,),
          ),
        ),





      ],
    );
  }
}
