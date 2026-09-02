import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:todo_hive/core/constant/App_color.dart';

class CustomNoteitem extends StatelessWidget {
  const CustomNoteitem({super.key, this.color, this.onTap});
  final Color? color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Flutter Tips',
                  style: TextStyle(fontSize: 24, color: AppColor.blackcolor),
                ),
                Icon(Icons.delete, size: 35, color: AppColor.blackcolor),
              ],
            ),
            Gap(18),
            Text(
              'Build Your Craear with Ahmed Saeed',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: AppColor.thirdcolor,
              ),
            ),
            Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '${DateFormat('MMM dd,yyyy').format(DateTime.now())}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: AppColor.blackcolor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
