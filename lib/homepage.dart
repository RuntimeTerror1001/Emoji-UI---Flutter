import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'reusable_card.dart';
import 'food_tab.dart';
import 'burger_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(kLeftPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6.0,
                        spreadRadius: 4.0,
                        color: Colors.grey.withOpacity(0.3),
                        offset: Offset(0.0, 3.0),
                      ),
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/tuxedo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: kLeftPadding),
            child: Text(
              'SEARCH FOR',
              style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w800, fontSize: 25.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: kLeftPadding),
            child: Text(
              'RECIPES',
              style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w800, fontSize: 25.0),
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Container(
              padding: EdgeInsets.only(left: 5.0),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: GoogleFonts.notoSans(fontSize: 14.0),
                    border: InputBorder.none,
                    fillColor: Colors.grey.withOpacity(0.5),
                    prefixIcon: Icon(Icons.search, color: Colors.grey)),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: kLeftPadding),
            child: Text(
              'Recommended',
              style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w800, fontSize: 20.0),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ReusableCard(
                    name: 'Hamburger',
                    price: '21',
                    img: 'burger',
                    bgcolor: Color(0xFFFFE9C6),
                    textcolor: Color(0xFFDA9551),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BurgerPage()));
                    },
                  ),
                  ReusableCard(
                    name: 'French Fries',
                    price: '15',
                    img: 'fries',
                    bgcolor: Color(0xFFC2E3FE),
                    textcolor: Color(0xFF6A8CAA),
                  ),
                  ReusableCard(
                    name: 'Donuts',
                    price: '15',
                    img: 'doughnut',
                    bgcolor: Color(0xFFD7FADA),
                    textcolor: Color(0xFF56CC7E),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: kLeftPadding),
            child: TabBar(
              controller: controller,
              isScrollable: true,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              labelStyle: GoogleFonts.notoSans(
                  fontSize: 16.0, fontWeight: FontWeight.w700),
              unselectedLabelStyle: GoogleFonts.notoSans(
                  fontSize: 12.0, fontWeight: FontWeight.w500),
              tabs: [
                Tab(child: Text('FEATURED')),
                Tab(child: Text('COMBO')),
                Tab(child: Text('FAVORITES')),
                Tab(child: Text('RECOMMENDED')),
              ],
            ),
          ),
          FoodTab(
            name: 'Hotdog',
            rating: '4.5',
            redprice: 6,
            oriprice: 18,
            img: 'hotdog',
          ),
          FoodTab(
            name: 'Cheese Pizza',
            rating: '4.8',
            redprice: 10,
            oriprice: 25,
            img: 'pizza',
          ),
        ],
      ),
    );
  }
}
