
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_hive/widgets/CustomTextField.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      child: Column(
        children: [
          Gap(15),
          CustomTextField(hint: 'Title'),
          Gap(15),
          CustomTextField(hint: 'Content',maxlines: 5,)
        ],
      ),
    );
  }
}
