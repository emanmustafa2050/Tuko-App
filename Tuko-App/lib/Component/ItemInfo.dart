
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, this.item});
  // ignore: prefer_typing_uninitialized_variables
  final item;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 100,
      child: Row(children: [
         Padding
            (
              padding: const EdgeInsets.only(left: 16),
              child: Column
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  Text(item.jpText,style: const TextStyle(color: Colors.white,fontSize: 16),),
                  Text(item.enText,style: const TextStyle(color: Colors.white,fontSize: 18))
                ],
              ),
            ),
      
            const Spacer(flex: 1,),
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: IconButton(
                onPressed: ()
                {
                  final player = AudioPlayer();
                  player.play(AssetSource(item.sounds));
                },
                icon: const Icon(Icons.play_arrow,color: Colors.white,size: 32,)),
            ),
           
      ],),
    );
  }
}

