import 'package:flutter/material.dart';
import 'package:tuko_app/Component/ItemInfo.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, this.item, required this.color});
  // ignore: prefer_typing_uninitialized_variables
  final item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: ItemInfo(item: item,),
      );
  }
}