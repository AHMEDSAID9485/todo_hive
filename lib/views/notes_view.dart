import 'package:flutter/material.dart';
import 'package:todo_hive/widgets/custom_body_for_notesview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBodyForNotesview() ,
    );
  }
}