import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:task1/constant.dart';
import 'package:task1/widgets/Box.dart';
import 'package:task1/widgets/Button.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello ${Login_name}!",
            style: GoogleFonts.lora(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
            textAlign: TextAlign.start,
          ),
          Text(
            "What fo you wanna learn today?",
            style: GoogleFonts.inter(
                color: grey, fontSize: 12, fontWeight: FontWeight.w500),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button(
                    text: " Programs",
                    icon:
                        ImageIcon(AssetImage("assets/book2.png"), color: blue,),
                  ),
                  Button(
                    text: " Get help",
                    icon: ImageIcon(
                      AssetImage("assets/book_color.png"),
                      color: blue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button(
                    text: " Learn",
                    icon: ImageIcon(
                      AssetImage("assets/book_color.png"),
                      color: blue,
                    ),
                  ),
                  Button(
                    text: " DD Tracker",
                    icon: ImageIcon(
                      AssetImage("assets/book_color.png"),
                      color: blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
            "Programs for you",
            style: GoogleFonts.lora(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
            textAlign: TextAlign.start,
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("View all ",
                    style: GoogleFonts.inter(
                color: grey, fontSize: 12, fontWeight: FontWeight.w500),),
                    Icon(Icons.arrow_forward)
                  ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 285,
            child: ListView(
              scrollDirection: Axis.horizontal,
              itemExtent: 240,
              padding: EdgeInsets.only(right: 8),
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Box2(
                    image: Image.asset("assets/mother_child.png"),
                    blue_heading: "Lifestyle",
                    heading: "A complete guide for your newborn baby",
                    smalltext: "16 lessons",
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Box2(
                    image: Image.asset("assets/mother.jpg"),
                    blue_heading: "Healthy Family",
                    heading: "Understanding of Human Behaviour",
                    smalltext: "12 lessons",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
            "Event and experiences",
            style: GoogleFonts.lora(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
            textAlign: TextAlign.start,
          ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("View all ",
                    style: GoogleFonts.inter(
                color: grey, fontSize: 12, fontWeight: FontWeight.w500),),
                    Icon(Icons.arrow_forward)
                  ],
              )
            ],
          ),
          SizedBox(height: 8,),
          Container(
            height: 295,
            // margin: EdgeInsets.only(right: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              itemExtent: 240,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Box(
                    image: Image.asset("assets/exercise.png"),
                    blue_heading: "BABYCARE",
                    heading: "Understanding of human behaviour",
                    smalltext: "13 Feb, Sunday",
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Box(
                    image: Image.asset("assets/exercise.png"),
                    blue_heading: "BABYCARE",
                    heading: "Understanding of human behaviour",
                    smalltext: "13 Feb, Sunday",
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Box(
                    image: Image.asset("assets/exercise.png",),
                    blue_heading: "BABYCARE",
                    heading: "Understanding of human behaviour",
                    smalltext: "13 Feb, Sunday",
                  ),
                ),Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Box(
                    image: Image.asset("assets/exercise.png"),
                    blue_heading: "BABYCARE",
                    heading: "Understanding of human behaviour",
                    smalltext: "13 Feb, Sunday",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
            "Lessons for you",
            style: GoogleFonts.lora(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
            textAlign: TextAlign.start,
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("View all ",
                    style: GoogleFonts.inter(
                color: grey, fontSize: 12, fontWeight: FontWeight.w500),),
                    Icon(Icons.arrow_forward)
                  ],
              )
            ],
          ),
          SizedBox(height: 8,),
          Container(
            height: 285,
            child: ListView(
              scrollDirection: Axis.horizontal,
              itemExtent: 240,
              padding: EdgeInsets.only(right: 8),
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Box2(
                      image: Image.asset("assets/mother_child.png"),
                      blue_heading: "Lifestyle",
                      heading: "A complete guide fo your new born baby",
                      smalltext: "16 lessons"),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Box2(
                      image: Image.asset("assets/mother.jpg"),
                      blue_heading: "Healthy Family",
                      heading: "Understanding of Human Behaviour",
                      smalltext: "12 lessons"),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Box2(
                      image: Image.asset("assets/mother_child.png"),
                      blue_heading: "Lifestyle",
                      heading: "A complete guide fo your new born baby",
                      smalltext: "16 lessons"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
