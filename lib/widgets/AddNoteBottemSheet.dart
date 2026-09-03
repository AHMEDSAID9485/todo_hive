
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_hive/core/constant/App_color.dart';
import 'package:todo_hive/widgets/CustomBottom.dart';
import 'package:todo_hive/widgets/CustomTextField.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom+16
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
           Divider(color:AppColor.witecolor,thickness: 4,indent: 150,endIndent: 150,radius:  BorderRadius.circular(1),),
           const Gap(15),
           const CustomTextField(hint: 'Title'),
           const Gap(15),
           const CustomTextField(hint: 'Content',maxlines: 5,),
           const Gap(20),
           const CustomBottom(title: 'ADD',)
          ],
        ),
      ),
    );
  }
}
