import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Category extends StatelessWidget {
  String? text;
  Color? color;
  void Function()?ontap;
  Category({super.key, this.text,this.color,this.ontap});

  @override
  Widget build(BuildContext context) 
  {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container
        (
          decoration: BoxDecoration(
           color: color,borderRadius: BorderRadius.circular(16)),
           height:70,width: double.infinity,
          child: Padding
          (
            padding: const EdgeInsets.all(16),
            child: Text(text!,style: const TextStyle(fontSize: 24,color: Colors.white),),
          ),
        ),
      ),
    );
  }
}