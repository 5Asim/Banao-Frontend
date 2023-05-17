// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/constant.dart';
import 'package:task1/widgets/detailspage.dart';
class Box extends StatelessWidget {
  final Image image;
  final String blue_heading;
  final String heading;
  final String smalltext;
  // final ElevatedButton? button;
  const Box({
    Key? key,
    required this.image,
    required this.blue_heading,
    required this.heading,
    required this.smalltext, 
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),

      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: ()
            {
              showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                    return Detail(image: image, blue_heading: blue_heading, heading: heading, smalltext: smalltext);
                  },
    );
            },
            child: Container(
              height: 140,
          
              child: image,
            ),
          ),
          Container(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text(blue_heading,
                  style: GoogleFonts.inter(color: blue,fontSize: 12,fontWeight: FontWeight.w700),textAlign: TextAlign.start,),
                  SizedBox(height: 12,),
                  Text(heading, style: GoogleFonts.inter(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),textAlign: TextAlign.start,),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(smalltext,style: GoogleFonts.inter(color: grey,fontSize: 12,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                      OutlinedButton(
                        
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  
                                  side: BorderSide(color: blue,),
                                   
                                ),
                             ),
                          
                          
                        ),
                        onPressed: (){}, child: Text("Book",style: GoogleFonts.inter(color: blue,fontSize: 12,fontWeight: FontWeight.w500),textAlign: TextAlign.start,))
                    ],
                  ),
                      
                  
                ],
              ),
            ),
          )
        ],
      ),


    );
  }
}

class Box2 extends StatelessWidget {
  final Image image;
  final String blue_heading;
  final String heading;
  final String smalltext;
  const Box2({
    Key? key,
    required this.image,
    required this.blue_heading,
    required this.heading,
    required this.smalltext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),

      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                    return Detail(image: image, blue_heading: blue_heading, heading: heading, smalltext: smalltext);
                  },
            ),          
  
            child: Container(
              height: 140,
          
              child: image,
            ),
          ),
          Container(
            height: 140,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text(blue_heading,
                  style: GoogleFonts.inter(color: blue,fontSize: 12,fontWeight: FontWeight.w700),textAlign: TextAlign.start,),
                  SizedBox(height: 12,),
                  Text(heading, style: GoogleFonts.inter(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700),textAlign: TextAlign.start,),
                  SizedBox(height: 15,),
                  Text(smalltext,style: GoogleFonts.inter(color: grey,fontSize: 12,fontWeight: FontWeight.w500),textAlign: TextAlign.start,),
                      
                  
                ],
              ),
            ),
          )
        ],
      ),


    );
  }
}
