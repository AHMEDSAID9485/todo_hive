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
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Flutter Tips',style: TextStyle(fontSize: 24,color: AppColor.blackcolor),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.delete,size: 40,color: AppColor.blackcolor,)
              ],
            ),
            Text('Build Your Craear with Ahmed Saeed',maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: AppColor.thirdcolor),),
             Gap(10),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Text('${DateFormat('MMM dd,yyyy').format(DateTime.now())}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: AppColor.blackcolor),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}