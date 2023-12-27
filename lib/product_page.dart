import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:myapp/custom_layout.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPages extends StatelessWidget {
  const ProductPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(180, 60, 60, 100),
      //AppBar
      appBar: AppBar(
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 2),
            Text(
              'KOLKATA,IND',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
        leading: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(
            Icons.account_circle_outlined,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              Icons.circle_notifications_outlined,
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: const Color.fromRGBO(180, 60, 60, 100),
      ),

      //Greeting Text
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Text(
                'Good Morning Debu,',
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              //Search Bar
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search Coffee',
                  hintStyle: GoogleFonts.openSans(
                    fontSize: 15,
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                  suffixIcon: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Icon(
                      Icons.filter_alt_outlined,
                      color: Colors.black,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Categories',
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomLayoutBox(
                        imageAsset: 'assets/images/espresso.jpg',
                        productName: 'Espresso',
                        price: '\$25.99'),
                    SizedBox(width: 15),
                    CustomLayoutBox(
                        imageAsset: 'assets/images/espresso.jpg',
                        productName: 'Espresso',
                        price: '\$25.99'),
                    SizedBox(width: 15),
                    CustomLayoutBox(
                        imageAsset: 'assets/images/espresso.jpg',
                        productName: 'Espresso',
                        price: '\$25.99'),
                    SizedBox(width: 15),
                    CustomLayoutBox(
                        imageAsset: 'assets/images/espresso.jpg',
                        productName: 'Espresso',
                        price: '\$25.99'),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Sugesstion',
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomLayoutBox(
                        imageAsset: 'assets/images/espresso.jpg',
                        productName: 'Espresso',
                        price: '\$25.99'),
                    SizedBox(width: 15),
                    CustomLayoutBox(
                        imageAsset: 'assets/images/espresso.jpg',
                        productName: 'Espresso',
                        price: '\$25.99'),
                    SizedBox(width: 15),
                    CustomLayoutBox(
                        imageAsset: 'assets/images/espresso.jpg',
                        productName: 'Espresso',
                        price: '\$25.99'),
                    SizedBox(width: 15),
                    CustomLayoutBox(
                        imageAsset: 'assets/images/espresso.jpg',
                        productName: 'Espresso',
                        price: '\$25.99'),
                    SizedBox(width: 15),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const GNav(
        haptic: false,
        tabBorderRadius: 20,
        activeColor: Colors.black54,
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.home_outlined,
            text: 'HOME',
            iconColor: Colors.white,
          ),
          GButton(
            icon: Icons.shopping_cart_outlined,
            text: 'CART',
            iconColor: Colors.white,
          ),
          GButton(
              icon: Icons.favorite_border_outlined,
              text: 'FAVORITE',
              iconColor: Colors.white),
          GButton(
              icon: Icons.account_circle_outlined,
              text: 'PROFILE',
              iconColor: Colors.white),
        ],
      ),
    );
  }
}
