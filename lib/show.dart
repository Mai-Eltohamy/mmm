import 'dart:math';
import 'package:flutter/material.dart';
class SHOW extends StatefulWidget{
  double h=0;
  int w=0;
  SHOW (this.h,this.w);

  @override
  State<SHOW> createState() => _SHOWState(this.h,this.w);
}

class _SHOWState extends State<SHOW> {
  double bmi=0 ;
  double height =0;
  int weight=0;
  Color ? fontColor ;
  _SHOWState(this.height,this.weight);
  String calculate(){
    bmi = weight/ pow(height.round()/100, 2);
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
      backgroundColor: Color(0xFF000020),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Your Result :",style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold
                  ,letterSpacing: 2
              ),),
            ),
            IconButton(onPressed: (){
              Navigator.pop(context);
            },
              icon: Icon(Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 35,),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1,
              height: MediaQuery.of(context).size.height/1.5,
              decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xFF1A1F38)
              ),
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text(
                    calculate(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color:  fontColor,
                        letterSpacing: 1.5
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text("${bmi.round()}",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        color: Colors.white
                    ),

                  )
                ],
              ),


            )
          ],
        ),
      ),
    );
  }}