
import 'package:flutter/services.dart';

class ExpiryDateInputFormatter extends TextInputFormatter{
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {

    if(newValue.selection.baseOffset==0){
      return newValue;
    }

    String inputData = newValue.text;
    StringBuffer buffer =StringBuffer();


    for(int i =0; i<inputData.length; i++){
      buffer.write(inputData[i]);
      int index =i+1;

      if(index % 2==0 && inputData.length!=index){
        buffer.write("/");
      }
    }


    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(
          offset: buffer.toString().length)
    );


  }


}