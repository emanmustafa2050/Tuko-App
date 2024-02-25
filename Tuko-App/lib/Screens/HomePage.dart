import 'package:flutter/material.dart';
import 'package:tuko_app/Component/CategoryItem.dart';
import 'package:tuko_app/Screens/Colors.dart';
import 'package:tuko_app/Screens/Family.dart';
import 'package:tuko_app/Screens/Numbers.dart';
import 'package:tuko_app/Screens/Phrases.dart';

class HomePage extends StatelessWidget 
{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
        backgroundColor: const Color(0xffFFF4DA),
        appBar: AppBar(
        backgroundColor: const Color(0xff4A322B),
        title: const Text('Tuko',style: TextStyle(color: Colors.white,fontSize: 24),),
        ),
        body: Column(
          children: 
          [
            const SizedBox(height: 75,),
            Category(color: const Color(0xffFA9532),text: "Numbers",
            ontap: () 
            {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
              {
                return NumbersPage();
              },
              ));
              
            },),
            const SizedBox(height: 32,),
  //-----------------------------------------------------------------------------


            Category(color: const Color(0xff538033),text: 'Family Members' ,
            ontap: () 
            {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
              {
                return const FamilyMembersPage();
              },));
            }),
            const SizedBox(height: 32,),
  //-----------------------------------------------------------------------------

            Category(color: const Color(0xff7E3FA3),text: "Colors",
            ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              {
                return const ColorsPage();

              }));
            },),
            const SizedBox(height: 32,),
//------------------------------------------------------------------------------------
            
            Category(color: const Color(0xff48A5CC),text: 'Phrases',
            ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (Contexe){
                 return const PhrasesPage();

              }));
            },),
            const SizedBox(height: 65,),
          ],
//-------------------------------------------------------------------------------------

        ),

      );
  }
}


