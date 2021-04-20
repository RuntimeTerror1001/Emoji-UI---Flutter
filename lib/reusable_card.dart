import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {this.bgcolor,
      this.img,
      this.name,
      this.price,
      this.textcolor,
      this.onTap});

  final String img;
  final String price;
  final String name;
  final Color bgcolor;
  final Color textcolor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 175.0,
          width: 150.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: bgcolor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 75.0,
                width: 75.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/$img.png',
                    height: 50.0,
                    width: 50.0,
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                name,
                style: GoogleFonts.notoSans(fontSize: 17.0, color: textcolor),
              ),
              Text(
                '\$' + price,
                style: GoogleFonts.notoSans(fontSize: 17.0, color: textcolor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
