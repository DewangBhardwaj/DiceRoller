//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 120, 22, 5),Color.fromARGB(255, 91, 6, 6)),
      ),
    ),
  );
}

