
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:todo_hive/core/constant/constant.dart';
import 'package:todo_hive/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:todo_hive/widgets/ItemColor.dart';

class CustomAddListColors extends StatefulWidget {
  const CustomAddListColors({super.key});

  @override
  State<CustomAddListColors> createState() => _CustomAddListColorsState();
}

class _CustomAddListColorsState extends State<CustomAddListColors> {
 
  int currentIndex = 0;
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
              context.read<AddNoteCubit>().color = Color_list[currentIndex];
              setState(() {});
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
