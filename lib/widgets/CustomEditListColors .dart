import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_hive/core/constant/constant.dart';
import 'package:todo_hive/models/note_model.dart';
import 'package:todo_hive/widgets/ItemColor.dart';

class CustomEditListColors extends StatefulWidget {
  const CustomEditListColors({super.key, required this.noteModel});
final NoteModel noteModel;
  @override
  State<CustomEditListColors> createState() => _CustomListColorsState();
}

class _CustomListColorsState extends State<CustomEditListColors> {
 
  late int currentIndex = Color_list.indexOf(Color(widget.noteModel.color));
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        separatorBuilder: (context, index) => Gap(10),
        itemCount: Color_list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.noteModel.color = Color_list[currentIndex].value;
              setState(() {
                
              });
            },
            child: ItemColor(
              color: Color_list[index],
              isactive: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
