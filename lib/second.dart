
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class second extends StatefulWidget{
   int h=0;
   double w=0;
  second(double hieght, int round);
  @override
  State<second> createState() => _secondState(this.h,this.w);
}
class _secondState extends State<second> {
  int wieght=0;
  double hieght= 0;
  Color ?fontColor;
  double bmi=0;
  _secondState(this.wieght,this.hieght);
  String Calculate(){
    bmi= wieght/pow(hieght.round()/100, 2);
    if(bmi<15){
      fontColor = Colors.orange;
      return "Very severely underweight";
    }
    else if(bmi>=15 && bmi<16){
      fontColor = Colors.orange;
      return "Severely underweight";
    }
    else if(bmi>=16 && bmi <18.5){
      fontColor = Colors.orange;
      return "Underweight";
    }
    else if(bmi>=18.5 && bmi <25){
      fontColor = Colors.green;
      return "Normal";
    }
    else if(bmi>=25 && bmi<30){
      fontColor = Colors.orange;
      return "Overweight";
    }
    else if(bmi >=30 && bmi < 35){
      fontColor = Colors.red;
      return "Moderately obese";
    }
    else if(bmi>=35 && bmi <40){
      fontColor = Colors.red;
      return "Severely obese";
    }
    else {
      fontColor = Colors.red;
      return "Very Severely obese";
    }


  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color(0xff0A0E21),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Your Result :",style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
              ,letterSpacing: 2
          ),),
          IconButton(onPressed: (){
            Navigator.pop(context);
          },
            icon: Icon(Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 30,),
          ),
          SizedBox(height:MediaQuery.of(context).size.width/25 ,),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width/1,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular
              (15),color:Color(0xff1A1F38) ),
            child: Column(
              children: [
                Text(Calculate(),  style: GoogleFonts.roboto(textStyle:
                TextStyle(fontSize: 24,
                    fontWeight: FontWeight.w700,color:fontColor)
                ),textAlign: TextAlign.center,
                ),
                SizedBox(height:MediaQuery.of(context).size.height/10 ,),
                Text("${bmi.round()}",  style: GoogleFonts.roboto(textStyle:
                TextStyle(fontSize: 44,
                    fontWeight: FontWeight.w700,color: Colors.white)
                ),textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  }
}