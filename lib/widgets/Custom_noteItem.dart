import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class CustomNoteitem extends StatelessWidget {
  const CustomNoteitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Color(0xffFFCD79),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Flutter Tips',style: TextStyle(fontSize: 30,color: Colors.black),),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.delete,size: 40,color: Colors.black,)
            ],
          ),
          Text('Build Your Craear with Ahmed Saeed',maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xffCEA15E)),),
           Gap(10),
           Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text('${DateFormat('MMM dd,yyyy').format(DateTime.now())}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Color(0xffCEA15E)),),
            ],
          ),
        ],
      ),
    );
  }
}