
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_hive/widgets/Custom_noteItem.dart';

class CustomListViewNote extends StatelessWidget {
  const CustomListViewNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => Gap(10),
        itemBuilder: (context,index)=>CustomNoteitem(),
        itemCount: 100,
        ),
    );
  }
}