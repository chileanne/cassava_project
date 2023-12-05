
import 'package:cassava_project/core/app_theme/app_colors.dart';
import 'package:cassava_project/core/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_constant.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  double height= 105.0;


  @override
  Widget build(BuildContext context) {
    var theme =Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.secondary,
        leading: SvgPicture.asset(ImageUtils.iconAssets(menuIC),fit: BoxFit.scaleDown,),
        actions: [
          SvgPicture.asset(ImageUtils.iconAssets(cartIC),fit: BoxFit.scaleDown,),
          const Gap(23),
          SvgPicture.asset(ImageUtils.iconAssets(notificationIC),fit: BoxFit.scaleDown,),
          const Gap(4),
        ],
      ),

      bottomSheet:DraggableScrollableSheet(
        minChildSize: 0.06,
        initialChildSize: 0.08,
        maxChildSize:0.8,
       expand: false,
        builder: (BuildContext context, ScrollController scrollController) {
          return  Container(
            //height: size.height*0.2,
            decoration: const BoxDecoration(
              
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)
                )
            ),

            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Gap(24),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 10,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.secondary,
                          borderRadius: BorderRadius.circular(5.0)
                      ),

                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 28.0,right: 25.0,top: 37.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(ImageUtils.iconAssets(myActivityIC),height: 30,width:30,),
                            Text(myActivityText,style: Theme.of(context).textTheme.titleSmall,),
                          ],
                        ),


                        SvgPicture.asset(ImageUtils.iconAssets(gridMenuIC),height: 30,width:30,),
                      ],
                    ),
                  ),



                  SizedBox(
                    height: 200,
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                          color: AppColor.greyColor3,
                          height: 36,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 29.0),
                            child: Text("23.Nov 2021",style: theme.textTheme.titleSmall?.copyWith(
                              color: AppColor.darkGreyColor
                            ),),
                          ),
                        ),
                        
                        
                        Padding(
                          padding:const EdgeInsets.only(left: 29.0,right: 29.0,top: 17.0,bottom: 17.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              SvgPicture.asset(ImageUtils.iconAssets(saleIC)),
                              Text("SALES",style: theme.textTheme.titleSmall?.copyWith(
                                  color: AppColor.darkGreyColor
                              ),),

                              Text("40 TONS",style: theme.textTheme.titleSmall?.copyWith(
                                  color: AppColor.darkGreyColor,

                              ),),



                              Text("100,000",style: theme.textTheme.titleSmall?.copyWith(
                                  color: AppColor.darkGreyColor,
                                  fontSize: 15.0
                              ),),
                            ],
                          ),
                        ),

                        Padding(
                          padding:const EdgeInsets.only(left: 29.0,right: 29.0,top: 17.0,bottom: 17.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              SvgPicture.asset(ImageUtils.iconAssets(purchaseIC)),
                              Text("PURCHASE",style: theme.textTheme.titleSmall?.copyWith(
                                  color: AppColor.darkGreyColor
                              ),),

                              Text("10 TONS",style: theme.textTheme.titleSmall?.copyWith(
                                color: AppColor.darkGreyColor,

                              ),),



                              Text("40,000",style: theme.textTheme.titleSmall?.copyWith(
                                  color: AppColor.darkGreyColor,
                                  fontSize: 15.0
                              ),),
                            ],
                          ),
                        )
                      ],
                    ),
                  )









                ],
              ),
            ),
          );
        },)

      /*Container(
        height: height,
        decoration: const BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)
          )
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Gap(24),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap:(){
                    setState(() {
                      height=size.height*0.5;
                    });
                  },
                  child: Container(
                    height: 10,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.secondary,
                      borderRadius: BorderRadius.circular(5.0)
                    ),

                  ),
                ),
              ),


            Padding(
              padding: const EdgeInsets.only(left: 28.0,right: 25.0,top: 37.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(ImageUtils.iconAssets(myActivityIC),height: 30,width:30,),
                      Text(myActivityText,style: Theme.of(context).textTheme.titleSmall,),
                    ],
                  ),


                  SvgPicture.asset(ImageUtils.iconAssets(gridMenuIC),height: 30,width:30,),
                ],
              ),
            ),





          ],
        ),
      )*/,



      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
           color: Colors.red,
           height:size.width* 0.8 ,
         ),
          
          
          Padding(
            padding: const EdgeInsets.only(left: 28.0,top: 20,bottom:20),
            child: Text(quickLinksText,style: theme.textTheme.titleSmall,),
          ),
          
          
          Expanded(
            child: GridView(
            //  physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 6,
                mainAxisSpacing:2.0,
                childAspectRatio: 1.3
              ),
              children: [
                btns(buyText, buyIC),
                btns(sellText, sellIC),
                btns(myFarmText, myFarmIC),
                btns(customerCareText,customerCareIC),
                btns(farmLocatorText,farmLocatiorIC),
                btns(myActivityText,myActivityIC)
              ],
            ),
          ),
          

          
        ],
      ),
    );
  }



  btns(String text, String icon){
    return Builder(
      builder: (context) {
        return Column(
          children: [
            SvgPicture.asset(ImageUtils.iconAssets(icon),height: 30,width:30,),
            const Gap(6),
            Text(text,style: Theme.of(context).textTheme.titleSmall,)
          ],
        );
      }
    );
  }

}
