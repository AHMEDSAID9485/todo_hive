import 'package:flutter/material.dart';
import 'package:todo_hive/core/constant/App_color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.widget, required this.text});
  final Widget widget;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: TextStyle(color: AppColor.witecolor, fontSize: 30)),
        Spacer(),
        widget
      ],
    );
  }
}
