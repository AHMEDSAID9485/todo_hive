import 'package:flutter/material.dart';

import 'package:todo_hive/core/constant/App_color.dart';


class ItemColor extends StatelessWidget {
  const ItemColor({super.key, required this.color, required this.isactive});
  final Color color;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return isactive
        ? CircleAvatar(radius: 40,backgroundColor: AppColor.witecolor, child: CircleAvatar(backgroundColor: color, radius: 37))
        : CircleAvatar(backgroundColor: color, radius: 40);
  }
}
