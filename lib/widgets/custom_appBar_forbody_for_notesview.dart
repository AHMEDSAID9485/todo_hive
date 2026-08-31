import 'package:flutter/material.dart';
import 'package:todo_hive/widgets/CustomSearchIcon.dart';

class CustomAppbarForbodyForNotesview extends StatelessWidget {
  const CustomAppbarForbodyForNotesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: TextStyle(color: Colors.white, fontSize: 30)),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
