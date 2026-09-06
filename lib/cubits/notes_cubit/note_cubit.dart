

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:todo_hive/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  List<NoteModel>? notes = [];
  Future<void> fetchNotes() async {
    final notesBox = await Hive.openBox<NoteModel>('notes_box');
    notes = notesBox.values.toList();
    emit(Notefitched());
  }
}
