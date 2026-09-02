import 'package:flutter/material.dart';
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
        backgroundColor: Color(0xff59ECD8),
        elevation: 0,
        onPressed: () {
            showModalBottomSheet(context: context, builder: (context){
            return AddNoteBottemSheet();
          });
        },
        child: Icon(Icons.add,size: 30,color: Colors.black,),
      ),
    );
  }
}
