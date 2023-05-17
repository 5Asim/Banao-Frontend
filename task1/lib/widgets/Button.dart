// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constant.dart';

class Button extends StatelessWidget {
  String text;
  ImageIcon icon;
  Button({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
              width: screenWidth *0.45,
              decoration: BoxDecoration(
                border: Border.all(color: blue),
                borderRadius: BorderRadius.circular(12)
              ),
              child: RawMaterialButton( 
                padding: EdgeInsets.symmetric(vertical: 15.0),
                onPressed: (){},
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:26.0),
                      child: icon,
                    ), 
                    Text(" "),
                    Text(text, style: TextStyle(color: blue ,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
  }
}
