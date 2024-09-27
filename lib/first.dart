import 'dart:ui';
import 'package:bmi/second.dart';
import 'package:bmi/show.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class first extends StatefulWidget{
  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  double h =0;
  double wieght=20;
  double age=20;
  bool male =false;
  double hieght=155;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0E21),
      appBar: AppBar(backgroundColor: Color(0xff1A1F38),
        title:Text("BMI calculator",
        style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 30,
            fontWeight: FontWeight.w700,color: Colors.white),
        ),
      ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    male=false;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.all(35),
                  height: MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.width/3,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular
                    (15),color:(male==false)?Color(0xffF10606):Color(0xff1A1F38) ),
                  child: Column(
                    children: [
                      Icon(Icons.female_sharp,size: 56,color: Colors.white,),
                      SizedBox(height:MediaQuery.of(context).size.height/29 ,),
                      Text("FEMALE",  style: GoogleFonts.roboto(textStyle:
                      TextStyle(fontSize: 24,
                          fontWeight: FontWeight.w700,color: Colors.white)
                      ))
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    male=true;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(13),
                  margin: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.width/3,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular
                    (15),color:(male==true)?Color(0xff09FF7A):Color(0xff1A1F38) ),
                  child: Column(
                    children: [
                      Icon(Icons.male,size: 56,color: Colors.white,),
                      SizedBox(height:MediaQuery.of(context).size.height/29 ,),
                      Text("MALE",  style: GoogleFonts.roboto(textStyle:
                      TextStyle(fontSize: 24,
                          fontWeight: FontWeight.w700,color: Colors.white)
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.width/2.5,
            width: MediaQuery.of(context).size.height/2.5,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular
              (15),color:Color(0xff1A1F38) ),
            child: Column(
              children: [
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${hieght.round()}",  style: GoogleFonts.roboto(textStyle:
                    TextStyle(fontSize: 20,
                        fontWeight: FontWeight.w700,color: Colors.white,
                        textBaseline: TextBaseline.alphabetic)
                    )
                    ),
                    Text("CM",  style: GoogleFonts.roboto(textStyle:
                    TextStyle(fontSize: 10,
                        fontWeight: FontWeight.w400,color: Colors.white,
                        )
                    )
                    ),
                  ],
                ),
               SizedBox(height:MediaQuery.of(context).size.height/23 ,),
             Slider(value: hieght, onChanged: (double h){
               setState(() {
                 hieght=h;
               });
             },
               max: 220,
               min: 20,
             )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.all(30),
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/3,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular
                  (15),color:Color(0xff1A1F38) ),
                child: Column(
                  children: [
                    Text("WIEGHT",  style: GoogleFonts.roboto(textStyle:
                    TextStyle(fontSize: 24,
                        fontWeight: FontWeight.w700,color: Colors.white)
                    )),
                    SizedBox(height:MediaQuery.of(context).size.width/35 ,),
                    Text("${wieght.round()}",  style: GoogleFonts.roboto
                      (textStyle:
                    TextStyle(fontSize: 24,
                        fontWeight: FontWeight.w700,color: Colors.white)
                    )),
                    SizedBox(height:MediaQuery.of(context).size.width/28,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              wieght--;
                            });
                          },
                            child: Container(child: Icon(Icons.remove_circle,size: 30,
                              color: Colors.white,))),
                       SizedBox(width:MediaQuery.of(context).size.width/16,),
                        InkWell(
                            onTap: (){
                              setState(() {
                                wieght++;
                              });
                            },
                            child: Container(child: Icon(Icons.add_circle,size: 30,
                              color: Colors.white,))),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.all(30),
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/3,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular
                  (15),color:Color(0xff1A1F38) ),
                child: Column(
                  children: [
                    Text("AGE",  style: GoogleFonts.roboto(textStyle:
                    TextStyle(fontSize: 24,
                        fontWeight: FontWeight.w700,color: Colors.white)
                    )),
                    SizedBox(height:MediaQuery.of(context).size.width/35 ,),
                    Text("${age.round()}",  style: GoogleFonts.roboto(textStyle:
                    TextStyle(fontSize: 24,
                        fontWeight: FontWeight.w700,color: Colors.white)
                    )),
                    SizedBox(height:MediaQuery.of(context).size.width/28,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: (){
                              setState(() {
                                age--;
                              });
                            },
                            child: Container(child: Icon(Icons.remove_circle,size: 30,
                              color: Colors.white,))),
                        SizedBox(width:MediaQuery.of(context).size.width/16,),
                        InkWell(
                            onTap: (){
                              setState(() {
                                age++;
                              });
                            },
                            child: Container(child: Icon(Icons.add_circle,size: 30,
                              color: Colors.white,))),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          InkWell(
            onTap: (){
              setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return SHOW(hieght, wieght.round());
              }));
              });
            },
            child: Container(
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height/10,
              width: MediaQuery.of(context).size.width/1,
              decoration: BoxDecoration(borderRadius: BorderRadius.only
                (bottomLeft:Radius.circular(13) ,bottomRight: Radius.circular(13)),
                  color:Color(0xffF10606) ),
              child: Column(
                children: [
                  Text("CALCULATE",  style: GoogleFonts.roboto(textStyle:
                  TextStyle(fontSize: 24,
                      fontWeight: FontWeight.w700,color: Colors.white)
                  )),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}