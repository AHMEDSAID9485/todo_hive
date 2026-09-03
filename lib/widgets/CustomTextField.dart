import 'package:flutter/material.dart';
import 'package:todo_hive/core/constant/App_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxlines = 1, this.onSaved});
  final String hint;
  final int? maxlines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:onSaved,
      validator: (value) {
        if(value?.isEmpty ?? true){
          return 'The field is required';
        }else{
          return null;
        }
      },
      decoration: InputDecoration(
        border: makeborder(AppColor.primcolor),
       // errorStyle: TextStyle(color: AppColor.redcolor,fontSize: 18),
        errorBorder: makeborder(AppColor.redcolor),
        enabledBorder: makeborder(),
        focusedBorder: makeborder(AppColor.primcolor),
        hintText: hint,
      ),
      cursorColor: AppColor.primcolor,
      maxLines: maxlines,
    );
  }

  OutlineInputBorder makeborder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? AppColor.witecolor, width: 2),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
