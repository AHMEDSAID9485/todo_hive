import 'package:flutter/material.dart';
import 'package:todo_hive/widgets/EditNoteViewbody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: EditNoteViewbody(),
   );
}}