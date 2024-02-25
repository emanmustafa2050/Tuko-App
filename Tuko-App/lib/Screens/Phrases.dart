import 'package:flutter/material.dart';
import 'package:tuko_app/Component/PhraseIte..dart';
import 'package:tuko_app/Models/numberModel.dart';


class PhrasesPage extends StatelessWidget {
  //Number one=Number(enText: 'One', jpText: 'ichi', image: 'assets/images/numbers/number_one.png');
  final List<Model>numberslist=const
  [
    Model
    (
      enText: 'What is your name?', jpText: 'Anata no namae wa nan desu ka', 
      sounds: 'sounds/phrases/what_is_your_name.wav',
    ),
    Model
    (
      enText: 'How are you feeling ?', jpText: 'Okimochi wa ikaga desu ka', 
      sounds: "sounds/phrases/how_are_you_feeling.wav",
    ),
    Model
    (
      enText: 'Where are you going?', jpText: 'Doko ni iku no desu ka?', 
      sounds: 'sounds/phrases/where_are_you_going.wav',
    ),
    Model
    (
      enText: 'I love programming.', jpText: 'Puroguramingu ga daisuki desu',sounds: 'sounds/phrases/i_love_programming.wav',
    ),
    Model
    (
      enText: 'Programming is easy', jpText: 'Puroguramingu wa kantan desu', 
      sounds: 'sounds/phrases/programming_is_easy.wav',
    ),
    Model
    (
      enText: 'I love Anime', jpText: 'Watashi wa anime ga daisuki desu', 
      sounds: 'sounds/phrases/i_love_anime.wav',
    ),
    Model
    (
      enText: 'Are_you_coming?', jpText: 'Kuru no desu ka', 
      sounds: 'sounds/phrases/are_you_coming.wav',
    ),
    Model
    (
      enText: 'Yes  im coming', jpText: 'Hai, ikimasu', 
      sounds: 'sounds/phrases/yes_im_coming.wav',
    ), 
    Model
    (
      enText: 'dont forget to subscribe', jpText: 'Wasurezu ni koudoku shite kudasai', 
      sounds: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
 
  ];

  const PhrasesPage({super.key});
  
  //const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff4A322B),
        title: const Text("Phrases",style: TextStyle(fontSize: 24,color: Colors.white),),
      ),
      body:ListView.builder
      ( 
        itemCount: numberslist.length,
        itemBuilder: (context,index){
          return PhrasesItem(color: const Color(0xff48A5CC),item: numberslist[index]);},
      ) ,
    );
  }

}



