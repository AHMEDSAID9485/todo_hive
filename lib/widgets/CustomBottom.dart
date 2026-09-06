
import 'package:flutter/material.dart';
import 'package:todo_hive/core/constant/App_color.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key, required this.title, this.onTap, required this.isLoading,
  });
final String title;
final void Function()? onTap;
final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColor.primcolor
        ),
        child: Center(
          child: isLoading ? CircularProgressIndicator(color: AppColor.blackcolor,) : Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColor.blackcolor),),
        ),
      ),
    );
  }
}
