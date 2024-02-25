import 'package:flutter/material.dart';
import 'package:tuko_app/Component/Items.dart';
import 'package:tuko_app/Models/numberModel.dart';


class NumbersPage extends StatelessWidget {
  //Number one=Number(enText: 'One', jpText: 'ichi', image: 'assets/images/numbers/number_one.png');
  final List<Model>numberslist=const
  [
    Model
    (
      enText: 'One', jpText: 'ichi', image: 'assets/images/numbers/number_one.png',
      sounds: 'sounds/numbers/number_one_sound.mp3',
    ),
    Model
    (
      enText: 'Two', jpText: 'ni', image: 'assets/images/numbers/number_two.png',
      sounds: 'sounds/numbers/number_two_sound.mp3',
    ),
    Model
    (
      enText: 'Three', jpText: 'san', image: 'assets/images/numbers/number_three.png',
      sounds: "sounds/numbers/number_three_sound.mp3",
    ),
    Model
    (
      enText: 'Four', jpText: 'shi', image: 'assets/images/numbers/number_four.png',
      sounds: 'sounds/numbers/number_four_sound.mp3',
    ),
    Model
    (
      enText: 'Five', jpText: 'go', image: 'assets/images/numbers/number_five.png',
      sounds: 'sounds/numbers/number_five_sound.mp3',
    ),
    Model
    (
      enText: 'Six', jpText: 'roku', image: 'assets/images/numbers/number_six.png',
      sounds: 'sounds/numbers/number_six_sound.mp3',
    ),
    Model
    (
      enText: 'Seven', jpText: 'nana', image: 'assets/images/numbers/number_seven.png',
      sounds: 'sounds/numbers/number_seven_sound.mp3',
    ),
    Model
    (
      enText: 'Eight', jpText: 'hachi', image: 'assets/images/numbers/number_eight.png',
      sounds: 'sounds/numbers/number_eight_sound.wav',
    ),
    Model
    (
      enText: 'Nine', jpText: ' ku', image: 'assets/images/numbers/number_nine.png',
      sounds: 'sounds/numbers/number_nine_sound.mp3',
    ),
    Model
    (
      enText: 'Ten', jpText: '	jū', image: 'assets/images/numbers/number_ten.png',
      sounds: 'sounds/numbers/number_ten_sound.mp3',
    ),
    
  ];
  
  //const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff4A322B),
        title: const Text("Numbers",style: TextStyle(fontSize: 24,color: Colors.white),),
      ),
      // ListView.builder بتوفر انى اكتب الlist بإيدى هى بتعرض عدد لا نهائى  من الindexes
      // ListView.builder --> use when need to make (scroll) rather than colmn
      body:ListView.builder
      ( 
        itemCount: numberslist.length,
        itemBuilder: (context,index){
          return Items(color: Colors.orange,item: numberslist[index]);},
      ) ,
    );
  }
}
