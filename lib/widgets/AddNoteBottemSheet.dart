
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
        top: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom+16
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(15),
            CustomTextField(hint: 'Title'),
            Gap(15),
            CustomTextField(hint: 'Content',maxlines: 5,),
            Gap(20),
            CustomBottom(title: 'ADD',)
          ],
        ),
      ),
    );
  }
}
