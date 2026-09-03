
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_hive/core/constant/App_color.dart';
import 'package:todo_hive/widgets/CustomBottom.dart';
import 'package:todo_hive/widgets/CustomTextField.dart';

class FormForAddNote extends StatefulWidget {
  const FormForAddNote({
    super.key,
  });

  @override
  State<FormForAddNote> createState() => _FormForAddNoteState();
}

class _FormForAddNoteState extends State<FormForAddNote> {
  String? title,subtitle;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
         Divider(color:AppColor.witecolor,thickness: 4,indent: 150,endIndent: 150,radius:  BorderRadius.circular(1),),
         const Gap(15),
          CustomTextField(hint: 'Title',onSaved: (value) {
           title = value;
           // Handle saved value
         },),
         const Gap(15),
          CustomTextField(hint: 'Content',maxlines: 5, onSaved: (value) {
           subtitle = value;
           // Handle saved value
         },),
         const Gap(20),
          CustomBottom(title: 'ADD',onTap: () {
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
              print('Title: $title');
              print('Content: $subtitle');
            }
          },)
        ],
      ),
    );
  }
}
