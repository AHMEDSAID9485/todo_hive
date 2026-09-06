import 'package:flutter/material.dart';
import 'package:todo_hive/models/note_model.dart';
import 'package:todo_hive/widgets/EditNoteViewbody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: EditNoteViewbody(noteModel: noteModel,),
   );
}}