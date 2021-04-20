import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTab extends StatelessWidget {
  FoodTab({this.name, this.img, this.oriprice, this.rating, this.redprice});

  final String name;
  final String rating;
  final int oriprice;
  final int redprice;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 15.0),
      child: Row(
        children: [
          Container(
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              color: Color(0xFFFFE3DF),
            ),
            child: Center(
              child: Image.asset(
                'assets/$img.png',
                height: 50,
                width: 50,
              ),
            ),
          ),
          SizedBox(width: 15.0),
          Container(
            width: 210,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.notoSans(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.blueGrey),
                ),
                Text(
                  rating,
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 10.0,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '\$$redprice',
                      style: GoogleFonts.lato(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          textStyle: TextStyle(color: Color(0xFFF68D7F))),
                    ),
                    SizedBox(width: 3.0),
                    Text(
                      '\$$oriprice',
                      style: GoogleFonts.lato(
                        fontSize: 12.0,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.w600,
                        textStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Color(0xFFFE7D6A),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6.0,
                    spreadRadius: 4.0,
                    color: Color(0xFFFE7D6A).withOpacity(0.3),
                  )
                ],
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
