import 'package:flutter/material.dart';
import 'package:tuko_app/Component/Items.dart';
import 'package:tuko_app/Models/numberModel.dart';


class FamilyMembersPage extends StatelessWidget {
  //Number one=Number(enText: 'One', jpText: 'ichi', image: 'assets/images/numbers/number_one.png');
  final List<Model>numberslist=const
  [
    Model
    (
      enText: 'Father', jpText: 'Chichi', image: 'assets/images/family_members/family_father.png',
      sounds: 'sounds/family_members/father.wav',
    ),
    Model
    (
      enText: 'Mother', jpText: 'Haha', image: 'assets/images/family_members/family_mother.png',
      sounds: 'sounds/family_members/mother.wav',
    ),
    Model // assets\sounds\family_members\grand father.wav
    (
      enText: 'Grand Father', jpText: 'Sofu', image: 'assets/images/family_members/family_grandfather.png',
      sounds: 'sounds/family_members/grand father.wav',
    ),
    Model
    (
      enText: 'Grand Mother', jpText: 'Sobo', image: 'assets/images/family_members/family_grandmother.png',
      sounds: 'sounds/family_members/grand mother.wav',
    ),
    Model
    (
      enText: 'Daughter', jpText: 'Musume', image: 'assets/images/family_members/family_daughter.png',
      sounds: 'sounds/family_members/daughter.wav',
    ),
    Model
    (
      enText: 'Son', jpText: 'Musuko', image: 'assets/images/family_members/family_son.png',
      sounds: 'sounds/family_members/son.wav',
    ),
    Model
    (
      enText: 'Older Brother', jpText: 'Ani', image: 'assets/images/family_members/family_older_brother.png',
      sounds: 'sounds/family_members/older bother.wav',
    ),
    Model
    (
      enText: 'Older Sister', jpText: 'Ane', image: 'assets/images/family_members/family_older_sister.png',
      sounds: 'sounds/family_members/older sister.wav',
    ),
     Model
    (
      enText: 'younger Brother', jpText: 'Otouto', image: 'assets/images/family_members/family_younger_brother.png',
      sounds: 'sounds/family_members/younger brohter.wav',
    ),
    Model
    (
      enText: 'younger Sister', jpText: 'Imouto', image: 'assets/images/family_members/family_younger_sister.png',
      sounds: 'sounds/family_members/younger sister.wav',
    ),
    
  ];

  const FamilyMembersPage({super.key});
  
  //const FamilyMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff4A322B),
        title: const Text("Family Members",style: TextStyle(fontSize: 24,color: Colors.white),),
      ),
      // ListView.builder بتوفر انى اكتب الlist بإيدى هى بتعرض عدد لا نهائى  من الindexes
      // ListView.builder --> use when need to make (scroll) rather than colmn
      body:ListView.builder
      ( 
        itemCount: numberslist.length,
        itemBuilder: (context,index){return Items(
          color: Colors.green,
          item: numberslist[index]);},
      ) ,
    );
  }
}
