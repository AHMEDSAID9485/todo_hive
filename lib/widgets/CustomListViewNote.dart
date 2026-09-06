import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:todo_hive/cubits/notes_cubit/note_cubit.dart';
import 'package:todo_hive/models/note_model.dart';
import 'package:todo_hive/views/edit_note_view.dart';
import 'package:todo_hive/widgets/Custom_Note_item.dart';

class CustomListViewNote extends StatelessWidget {
  CustomListViewNote({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<NoteCubit>().fetchNotes();
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes!;
        return Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 12),
            separatorBuilder: (context, index) => Gap(10),
            itemBuilder: (context, index) {
              return CustomNoteitem(
                noteModel: notes[index],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditNoteView(noteModel: notes[index],)),
                  );
                },
              );
            },
            itemCount: BlocProvider.of<NoteCubit>(context).notes?.length ?? 0,
          ),
        );
      },
    );
  }
}
