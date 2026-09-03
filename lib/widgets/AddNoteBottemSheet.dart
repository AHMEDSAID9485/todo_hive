import 'package:flutter/material.dart';
import 'package:todo_hive/widgets/FormForAddNote.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom+16
      ),
      child: SingleChildScrollView(
        child: FormForAddNote(),
      ),
    );
  }
}
