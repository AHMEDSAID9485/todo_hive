import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:todo_hive/cubits/notes_cubit/note_cubit.dart';
import 'package:todo_hive/models/note_model.dart';
import 'package:todo_hive/widgets/CustomAppBar.dart';
import 'package:todo_hive/widgets/CustomTextField.dart';
import 'package:todo_hive/widgets/Custom_Icon.dart';

class EditNoteViewbody extends StatefulWidget {
  const EditNoteViewbody({super.key, required this.noteModel});
final NoteModel noteModel;
  @override
  State<EditNoteViewbody> createState() => _EditNoteViewbodyState();
}

class _EditNoteViewbodyState extends State<EditNoteViewbody> {
  String ? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:12,),
      child: Column(
        children: [
          Gap(35),
          CustomAppBar(text: 'Edit Note',widget: CustomIcon(iconData: Icons.check,onTap: () {
            widget.noteModel.title = title??widget.noteModel.title;
            widget.noteModel.subtitle = subtitle??widget.noteModel.subtitle;
            widget.noteModel.save();
            context.read<NoteCubit>().fetchNotes();
            Navigator.pop(context);
          },),),
          Gap(15),
          CustomTextField(hint: 'Title',onChanged: (value){
            title = value;
          },),
          Gap(15),
          CustomTextField(hint: 'Content',maxlines: 5, onChanged: (value){
            subtitle = value;
          },)
        ],
      ),
    );
  }
}