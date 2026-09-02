import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_hive/widgets/CustomListViewNote.dart';
import 'package:todo_hive/widgets/Custom_Icon.dart';
import 'package:todo_hive/widgets/CustomAppBar.dart';

class CustomBodyForNotesview extends StatelessWidget {
  const CustomBodyForNotesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:12,),
      child: Column(
        children: [
          Gap(35),
          CustomAppBar(text: 'Notes',widget: CustomIcon(iconData: Icons.search,),),
          Gap(10),
          CustomListViewNote()
        ],
      ),
    );
  }
}
