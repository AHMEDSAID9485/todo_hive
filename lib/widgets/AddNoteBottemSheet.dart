import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_hive/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:todo_hive/cubits/notes_cubit/note_cubit.dart';
import 'package:todo_hive/widgets/FormForAddNote.dart';
import 'package:todo_hive/widgets/show_snack_bar.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSuccess) {
          context.read<NoteCubit>().fetchNotes();
          ScaffoldMessenger.of(context).showSnackBar(
            show_snack_bar(message: 'Note added successfully'),
          );
          Navigator.pop(context);
        } else if (state is AddNoteFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            show_snack_bar(message: 'Failed to add note'),
          );
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNoteLoading ? true : false,
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom + 16,
            ),
            child: SingleChildScrollView(child: FormForAddNote()),
          ),
        );
      },
    );
  }
}
