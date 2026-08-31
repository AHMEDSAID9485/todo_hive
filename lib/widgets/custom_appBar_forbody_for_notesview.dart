import 'package:flutter/material.dart';

class CustomAppbarForbodyForNotesview extends StatelessWidget {
  const CustomAppbarForbodyForNotesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: TextStyle(color: Colors.white, fontSize: 30)),
        Spacer(),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white60.withOpacity(.05),
          ),
          child: Icon(Icons.search, size: 24),
        ),
      ],
    );
  }
}
