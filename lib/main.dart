
import 'package:flutter/material.dart';
import 'package:tip_calculate/tip.dart';
import 'package:tip_calculate/tip_calculate_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: TipCalculatePage(),
   );
  }

}