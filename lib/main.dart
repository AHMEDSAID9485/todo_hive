import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:todo_hive/models/note_model.dart';
import 'package:todo_hive/views/notes_view.dart';

void main() async {
  
  await Hive.initFlutter();
    Hive.registerAdapter<NoteModel>(NoteModelAdapter());
    await Hive.openBox<NoteModel>('notes_box');
  
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark
      ),
      home: NotesView(),
    );
  }
}