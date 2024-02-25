// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tuko_app/Component/ItemInfo.dart';

class Items extends StatelessWidget 
{

  // ignore: prefer_typing_uninitialized_variables
  final item ;
  const Items({super.key, required this.item,required this.color});

  final   Color color;
  // ignore: annotate_overrides
  Widget build(BuildContext context) 
  {
    return Container
    (
        color: color,
        height:100 ,
        child: Row(
          children: 
          [
          Container(color: const Color(0xffFFF4DA),child: Image.asset(item.image)),
          Expanded(child: ItemInfo(item: item,)),
          ]),
    );   
  }
}





