
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key, required this.iconData, this.onTap,
  });
final IconData iconData;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white60.withOpacity(.05),
        ),
        child: Icon(iconData, size: 24),
      ),
    );
  }
}
