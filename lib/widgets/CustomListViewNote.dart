import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_hive/widgets/Custom_noteItem.dart';

class CustomListViewNote extends StatelessWidget {
  CustomListViewNote({super.key});

  final List<Color> colors = [
    Color(0xffFFCD79),
    Color(0xffE7E895),
    Color(0xffD39DDA),
    Color(0xff76D6EE),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => Gap(10),
        itemBuilder: (context, index) {
          final currentcolor = index % colors.length;
          return CustomNoteitem(color: colors[currentcolor]);
        },
        itemCount: 20,
      ),
    );
  }
}
