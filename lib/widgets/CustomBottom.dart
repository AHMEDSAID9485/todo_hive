
import 'package:flutter/material.dart';
import 'package:todo_hive/core/constant/App_color.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColor.primcolor
      ),
      child: Center(
        child: Text(title,style: TextStyle(
          color: AppColor.blackcolor,
          fontSize: 25
        ),),
      ),
    );
  }
}
