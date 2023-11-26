

import 'package:flutter/material.dart';

class CreateAccountType extends StatefulWidget {
  const CreateAccountType({super.key});

  @override
  State<CreateAccountType> createState() => _CreateAccountTypeState();
}

class _CreateAccountTypeState extends State<CreateAccountType> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
      leading: const BackButton(),
      ) ,

      bottomNavigationBar: Container(
        width: size.width,
        height: 70.0,
        color:theme.colorScheme.onPrimary,
        child: Padding(
          // padding: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.only(left: 40.0,right: 20),
         // padding: const EdgeInsets.only(left: 40.0,right: 20,top: 26,bottom: 38),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Next",
                style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.primary
                ),
              ),

              IconButton(
                  onPressed: (){

                  },
                  icon:Icon(Icons.arrow_forward_rounded,
                  color: theme.colorScheme.primary,
                  size: 28.0,))
            ],
          ),
        ),
      ),
      body: Column(
        children: [
         Spacer(),

          Container(
            height: 50,
            decoration: BoxDecoration(
              color: theme.colorScheme.onSecondary,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: theme.colorScheme.primary
                  ),),
                  const SizedBox(width: 4,),
                  Text("Sign In",
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: theme.colorScheme.primary
                  ),),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
