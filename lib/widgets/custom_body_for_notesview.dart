import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_hive/widgets/Custom_noteItem.dart';
import 'package:todo_hive/widgets/custom_appBar_forbody_for_notesview.dart';

class CustomBodyForNotesview extends StatelessWidget {
  const CustomBodyForNotesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,),
      child: Column(
        children: [
          Gap(35),
          CustomAppbarForbodyForNotesview(),
          Gap(10),
          CustomNoteitem()
        ],
      ),
    );
  }
}