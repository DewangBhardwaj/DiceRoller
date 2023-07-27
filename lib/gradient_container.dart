import 'package:flutter/material.dart';

import 'package:first_app/dice_roller.dart';

//import 'package:first_app/text_style.dart';

// const GradientContainer({key}) : super(key: key);
// both does the same thing that is they call key func from stlwidget.


class GradientContainer extends StatelessWidget{

  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context){
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color1, color2
                // Color.fromARGB(255, 120, 22, 5),
                // Color.fromARGB(255, 91, 6, 6)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            //child: StyledText('Welcome'),
            child: RollDice(),
          ),
        );
  }
}

// class GradientContainer extends StatelessWidget{

//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context){
//     return Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 120, 22, 5),
//                 Color.fromARGB(255, 91, 6, 6)
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: const  Center(
//             child: StyledText('Welcome'),
//           ),
//         );
//   }
// }
