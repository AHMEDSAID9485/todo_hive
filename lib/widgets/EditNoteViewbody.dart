import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_hive/widgets/CustomAppBar.dart';
import 'package:todo_hive/widgets/Custom_Icon.dart';

class EditNoteViewbody extends StatelessWidget {
  const EditNoteViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:12,),
      child: Column(
        children: [
          Gap(35),
          CustomAppBar(text: 'Edit Note',widget: CustomIcon(iconData: Icons.edit),),
        ],
      ),
    );
  }
}