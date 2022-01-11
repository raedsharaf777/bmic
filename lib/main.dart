import 'package:bmic/screens/input_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMIC());
}

class BMIC extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
           // bodyText2:  TextStyle(
           //   fontSize: 20,color: Colors.white
           // )
        ),
        primaryColor: Color(0xff141E61),
      scaffoldBackgroundColor: Color(0xff0F044C),
      ),
      home: InputPage(),
    );
  }
}
