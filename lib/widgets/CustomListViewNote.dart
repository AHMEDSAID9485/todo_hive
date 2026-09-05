import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_hive/views/edit_note_view.dart';
import 'package:todo_hive/widgets/Custom_Note_item.dart';

class CustomListViewNote extends StatelessWidget {
  CustomListViewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 12),
        separatorBuilder: (context, index) => Gap(10),
        itemBuilder: (context, index) {
          return CustomNoteitem(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>EditNoteView()));
          },);
        },
        itemCount: 20,
      ),
    );
  }
}
