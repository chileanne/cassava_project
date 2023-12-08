

import 'package:cassava_project/core/constants/app_constant.dart';
import 'package:cassava_project/core/utils/image_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../core/app_theme/app_colors.dart';
import '../../core/shared_widgets/drop_down_form_field.dart';

class PurchaseController extends GetxController{

  TextEditingController product =TextEditingController();
  TextEditingController amount =TextEditingController();
  var selectedQuantity ="0".obs;


  @override
  void onInit() {
    product.text= "Cassava";
  }



  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems=[

      DropdownMenuItem(
          value: "0",
          child: Row(
            children: [



              Text("Choose Option",
                style: Theme.of(Get.context!).textTheme.titleSmall?.copyWith(
                    color:AppColor.greyColor1
                ),),


            ],
          )),

    DropdownMenuItem(
        value: "80,000",
        onTap: (){
          amount.text= selectedQuantity.value;
        },
        child: Row(
          children: [

            SvgPicture.asset(ImageUtils.iconAssets(yellowCircleIC)),

            Text("10 Tons of Cassava",
              style: Theme.of(Get.context!).textTheme.titleSmall?.copyWith(
                  color:AppColor.greyColor1
              ),),


            Text("N80,000",
              style: Theme.of(Get.context!).textTheme.titleSmall?.copyWith(
                  color:AppColor.greyColor1
              ),),
          ],
        )),

      DropdownMenuItem(
          value: "20,000",
          onTap: (){
            amount.text= selectedQuantity.value;
          },
          child: Row(
            children: [

              SvgPicture.asset(ImageUtils.iconAssets(yellowCircleIC)),

              Text("20 Tons of Cassava",
                style: Theme.of(Get.context!).textTheme.titleSmall?.copyWith(
                    color:AppColor.greyColor1
                ),),


              Text("N20,000",
                style: Theme.of(Get.context!).textTheme.titleSmall?.copyWith(
                    color:AppColor.greyColor1
                ),),
            ],
          )),


    ];




    return menuItems;
  }

  validateAmount(){
    return (String value){
        if(value.isEmpty){
           return empty;
        }
    };
  }
}