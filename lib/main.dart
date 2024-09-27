import 'package:bmi/first.dart';
import 'package:bmi/second.dart';
import 'package:bmi/show.dart';
import 'package:flutter/material.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:first(),
  );
  }

}