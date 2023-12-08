
import 'package:cassava_project/core/constants/app_constant.dart';
import 'package:cassava_project/core/shared_widgets/app_Bar_widgets.dart';
import 'package:cassava_project/core/utils/card_input_formatter_utils.dart';
import 'package:cassava_project/core/utils/expiry_date_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../core/app_theme/app_colors.dart';

class NewCardScreen extends StatefulWidget {
  const NewCardScreen({super.key});

  @override
  State<NewCardScreen> createState() => _NewCardScreenState();
}

class _NewCardScreenState extends State<NewCardScreen> {
  TextEditingController cardNumber = TextEditingController();
  TextEditingController cvv =TextEditingController();
  TextEditingController expiryDate =TextEditingController();


  @override
  Widget build(BuildContext context) {
    var theme =Theme.of(context);
    return  Scaffold(
      appBar: SharedAppBars(
        title: newCardText,
      ),

      body: Column(
        children: [
          TextFormField(
            controller:cardNumber,
            style:theme.textTheme.titleSmall ,
            decoration: InputDecoration(
             // suffixIcon:suffixIcon,
              isDense: true,
              hintText: "Required",
              hintStyle: theme.textTheme.titleSmall?.copyWith(
                  color: AppColor.greyColor2
              ),
              focusedBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                      color: theme.colorScheme.onPrimary
                  )
              ),
              errorBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                      color: theme.colorScheme.onError
                  )
              ) ,
              enabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                      color: theme.colorScheme.onPrimary
                  )
              ),

              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                      color: theme.colorScheme.onPrimary
                  )
              ),

            ),
            inputFormatters: [
             FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(19),
              CardNumberInputFormatterUtils()

            ],

          ),


          Padding(
            padding: const EdgeInsets.only(left: 28.0,right: 32.0),
            child: Row(
              children: [
               SizedBox(
                 width: 140,
                  child: TextFormField(
                    controller:expiryDate,
                    style:theme.textTheme.titleSmall ,
                    decoration: InputDecoration(
                      // suffixIcon:suffixIcon,
                      isDense: true,
                      hintText: "MM/YY",
                      hintStyle: theme.textTheme.titleSmall?.copyWith(
                          color: AppColor.greyColor2
                      ),
                      focusedBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: theme.colorScheme.onPrimary
                          )
                      ),
                      errorBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: theme.colorScheme.onError
                          )
                      ) ,
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: theme.colorScheme.onPrimary
                          )
                      ),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: theme.colorScheme.onPrimary
                          )
                      ),

                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(4),
                      ExpiryDateInputFormatter()

                    ],

                  ),
                ),
               const Gap(18),
               SizedBox(
                 width: 140,
                  child: TextFormField(
                    controller:cvv,
                    style:theme.textTheme.titleSmall ,
                    decoration: InputDecoration(
                      // suffixIcon:suffixIcon,
                      isDense: true,
                      hintText: "CVV",
                      hintStyle: theme.textTheme.titleSmall?.copyWith(
                          color: AppColor.greyColor2
                      ),
                      focusedBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: theme.colorScheme.onPrimary
                          )
                      ),
                      errorBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: theme.colorScheme.onError
                          )
                      ) ,
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: theme.colorScheme.onPrimary
                          )
                      ),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: theme.colorScheme.onPrimary
                          )
                      ),

                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(3),


                    ],

                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
