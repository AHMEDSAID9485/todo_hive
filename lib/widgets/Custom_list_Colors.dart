import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_hive/core/constant/App_color.dart';

class ItemColor extends StatelessWidget {
  const ItemColor({super.key, required this.color, required this.isactive});
  final Color color;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return isactive
        ? CircleAvatar(radius: 40,backgroundColor: AppColor.witecolor, child: CircleAvatar(backgroundColor: color, radius: 37))
        : CircleAvatar(backgroundColor: color, radius: 40);
  }
}

class CustomListColors extends StatefulWidget {
  const CustomListColors({super.key});

  @override
  State<CustomListColors> createState() => _CustomListColorsState();
}

class _CustomListColorsState extends State<CustomListColors> {
  final List<Color> Color_list = [
    const Color(0xFF6C5CE7), // بنفسجي عصري
    const Color(0xFF0984E3), // أزرق هادئ
    const Color(0xFF00CEC9), // تيل / تركواز
    const Color(0xFF00B894), // أخضر نعناعي
    const Color(0xFFFDCB6E), // أصفر دافئ
    const Color(0xFFE17055), // برتقالي مرجاني
    const Color(0xFFE84393), // وردي جذاب
  ];
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
