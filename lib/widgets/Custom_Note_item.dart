import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:todo_hive/core/constant/App_color.dart';
import 'package:todo_hive/cubits/notes_cubit/note_cubit.dart';
import 'package:todo_hive/models/note_model.dart';

class CustomNoteitem extends StatelessWidget {
  const CustomNoteitem({super.key, this.onTap, required this.noteModel});
  final void Function()? onTap;
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Color(noteModel.color),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  noteModel.title,
                  style: TextStyle(fontSize: 24, color: AppColor.blackcolor),
                ),
                GestureDetector(
                  onTap: () {
                    noteModel.delete();
                    context.read<NoteCubit>().fetchNotes();
                  },
                  child: Icon(Icons.delete, size: 35, color: AppColor.blackcolor)),
              ],
            ),
            Gap(18),
            Text(
              noteModel.subtitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: AppColor.thirdcolor,
              ),
            ),
            Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '${noteModel.date}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: AppColor.blackcolor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
