import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ItemColor extends StatelessWidget {
  const ItemColor({super.key, required this.color});
final Color color;
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      backgroundColor: color,
      radius: 40,
    );
  }
}
final List<Color> Color_list = [
  const Color(0xFF6C5CE7), // بنفسجي عصري
  const Color(0xFF0984E3), // أزرق هادئ
  const Color(0xFF00CEC9), // تيل / تركواز
  const Color(0xFF00B894), // أخضر نعناعي
  const Color(0xFFFDCB6E), // أصفر دافئ
  const Color(0xFFE17055), // برتقالي مرجاني
  const Color(0xFFE84393), // وردي جذاب
];
class CustomListColors extends StatelessWidget {
  const CustomListColors({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 80,
      child: ListView.separated(
        separatorBuilder: (context, index) => Gap(10),
        itemCount: Color_list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return ItemColor(color: Color_list[index],);
        }
        ),
    );
  }
}