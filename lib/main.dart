import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_hive/cubits/notes_cubit/note_cubit.dart';

import 'package:todo_hive/models/note_model.dart';
import 'package:todo_hive/note_bloc_observer.dart';
import 'package:todo_hive/views/notes_view.dart';

void main() async {
  Bloc.observer = NoteBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter<NoteModel>(NoteModelAdapter());
  await Hive.openBox<NoteModel>('notes_box');

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
        home: NotesView(),
      ),
    );
  }
}
