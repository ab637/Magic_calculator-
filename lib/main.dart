import 'package:flutter/material.dart';
import 'package:magic_calc/home.dart';

void main() {
  runApp(const MagicCalc());
}

class MagicCalc extends StatelessWidget {
  const MagicCalc({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return const  MaterialApp(
      title: "Magic Calculator",

      home:  homePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

