import 'package:flutter/material.dart';
import 'package:tuko_app/Component/Items.dart';
import 'package:tuko_app/Models/numberModel.dart';


class ColorsPage extends StatelessWidget {
  //Number one=Number(enText: 'One', jpText: 'ichi', image: 'assets/images/numbers/number_one.png');
  final List<Model>numberslist=const
  [
    Model
    (
      enText: 'Red', jpText: 'Aka', image: 'assets/images/colors/color_red.png',
      sounds: 'sounds/colors/red.wav',
    ),
    Model
    (
      enText: 'Dusty_yellow', jpText: 'Hokorippoi Kiiro', image: 'assets/images/colors/color_dusty_yellow.png',
      sounds: 'sounds/colors/dusty yellow.wav',
    ),
    Model
    (
      enText: 'Green', jpText: 'Midori', image: 'assets/images/colors/color_green.png',
      sounds: "sounds/colors/green.wav",
    ),
    Model
    (
      enText: 'White', jpText: 'Shiro', image: 'assets/images/colors/color_white.png',
      sounds: 'sounds/colors/white.wav',
    ),
    Model
    (
      enText: 'Yellow', jpText: 'Kiiro', image: 'assets/images/colors/yellow.png',
      sounds: 'sounds/colors/yellow.wav',
    ),
    Model
    (
      enText: 'Gray', jpText: 'Haiiro', image: 'assets/images/colors/color_gray.png',
      sounds: 'sounds/colors/gray.wav',
    ),
    Model
    (
      enText: 'Brown', jpText: 'Chairo', image: 'assets/images/colors/color_brown.png',
      sounds: 'sounds/colors/brown.wav',
    ),
    Model
    (
      enText: 'Black', jpText: 'Kuro', image: 'assets/images/colors/color_black.png',
      sounds: 'sounds/colors/black.wav',
    ),  
  ];

  const ColorsPage({super.key});
  
  //const \ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff4A322B),
        title: const Text("Colors",style: TextStyle(fontSize: 24,color: Colors.white),),
      ),
      // ListView.builder بتوفر انى اكتب الlist بإيدى هى بتعرض عدد لا نهائى  من الindexes
      // ListView.builder --> use when need to make (scroll) rather than colmn
      body:ListView.builder
      ( 
        itemCount: numberslist.length,
        itemBuilder: (context,index){
          return Items(color: const Color(0xff7E3FA3),item: numberslist[index]);},
      ) ,
    );
  }
}
