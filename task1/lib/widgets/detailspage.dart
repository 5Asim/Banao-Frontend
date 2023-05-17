import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/constant.dart';
import 'package:task1/widgets/detailspage.dart';

class Detail extends StatelessWidget {
  final Image image;
  final String blue_heading;
  final String heading;
  final String smalltext;

  const Detail({
    Key? key,
    required this.image,
    required this.blue_heading,
    required this.heading,
    required this.smalltext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  blue_heading,
                  style: GoogleFonts.inter(
                    color: blue,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  heading,
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  smalltext,
                  style: GoogleFonts.inter(
                    color: grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 12),
                ClipRRect(
                  // clipBehavior: ,
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child:image
          
          ),
          SizedBox(height: 8,),
           Text(
                  "Exercise is not just about building muscles; it's about building character, discipline, and resilience.Movement is medicine. Engage in regular exercise to nourish your body, mind, and soul.",
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add your button's onPressed logic here
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  child: Text(
                    "Book",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
