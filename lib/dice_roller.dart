import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();

class RollDice extends StatefulWidget{
  const RollDice({super.key});

  @override
  State<RollDice> createState(){
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice>{

  var changeDice = 2;

  void rollDice(){
    setState(() {
      changeDice = randomizer .nextInt(6) + 1;
    });
  }

  @override
  Widget build(context){
    return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/dice-$changeDice.png',
                //height: 200,
                width: 200,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(onPressed: rollDice ,style: TextButton.styleFrom(
                  foregroundColor: Colors.yellow,
                  textStyle: const TextStyle(
                    fontSize: 28,
                  )
                ),
                child: const Text('ReRoll Dice'),
                ),
              ],
            );
  }
}

//       or 

// class _RollDiceState extends State<RollDice>{

//   var changeDice = 'assets/images/dice-2.png';

//   void rollDice(){
//     var diceRoll = Random().nextInt(6) + 1;
//     setState(() {
//       changeDice = 'assets/images/dice-$diceRoll.png';
//     });
//   }

//   @override
//   Widget build(context){
//     return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   changeDice,
//                 //height: 200,
//                 width: 200,
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 TextButton(onPressed: rollDice ,style: TextButton.styleFrom(
//                   foregroundColor: Colors.yellow,
//                   textStyle: const TextStyle(
//                     fontSize: 28,
//                   )
//                 ),
//                 child: const Text('ReRoll Dice'),
//                 ),
//               ],
//             );
//   }
// }