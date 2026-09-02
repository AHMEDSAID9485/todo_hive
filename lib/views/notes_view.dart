import 'package:flutter/material.dart';
import 'package:todo_hive/core/constant/App_color.dart';
import 'package:todo_hive/widgets/AddNoteBottemSheet.dart';
import 'package:todo_hive/widgets/custom_body_for_notesview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBodyForNotesview(),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: AppColor.primcolor,
        elevation: 0,
        onPressed: () {
            showModalBottomSheet(
              context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ),
               builder: (context){
            return AddNoteBottemSheet();
          });
        },
        child: Icon(Icons.add,size: 30,color: AppColor.blackcolor,),
      ),
    );
  }
}
