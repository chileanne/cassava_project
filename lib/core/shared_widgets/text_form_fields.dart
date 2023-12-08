

import 'package:cassava_project/core/app_theme/app_colors.dart';
import 'package:flutter/material.dart';

class SharedTextFormFields extends StatelessWidget {
  final String? Function(String? value) validators;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String hintText;
  final bool hideText;
  final Widget suffixIcon;
  final readOnly;

  const SharedTextFormFields(
      {super.key,

        required this.keyboardType,
        required this.controller, required  this.validators, required this.hintText,this.hideText=false, this.suffixIcon=const SizedBox(), this.readOnly=false
      });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return  Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextFormField(
        readOnly:readOnly ,
        controller:controller ,
        style:theme.textTheme.titleSmall ,
        validator: validators,
        keyboardType:keyboardType ,
        obscureText:hideText ,
        decoration: InputDecoration(
          suffixIcon:suffixIcon,
          isDense: true,
          hintText: hintText,
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
      ),
    );
  }
}
