import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../res/color/app_colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.White),
        ),
        iconTheme: IconThemeData(
          color: AppColors.White,
        ),
        backgroundColor: AppColors.Green,
      ),
      drawer: Drawer(
        backgroundColor: AppColors.DullBlack,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                          color: AppColors.Green,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage(
                            "assets/auth_img/person.jpg",

                            //fit: BoxFit.cover,
                          ),)
                        ),
                      ),
                      SizedBox(width: 15,),
                      Text(
                        'News Reporter',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.White),
                      ),
                    ],
                  ),
                  Text(
                    'Welcome,',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.White),
                  ),
                  Text(
                    "Krupal Dabhi",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.White),
                  ),
                  Text(
                    "Krupaldabhi@11111.gmail.com",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.White),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color:AppColors.Green
              ),
            ),
            //Saved Videos
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.ondemand_video_sharp,color: AppColors.White,),
                  Text('Saved Videos',style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.White),),
                ],
              ),
              onTap: () {
                // Handle item tap
                Navigator.pop(context); // Close the drawer
              },
            ),
            //Packages
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.attach_money,color: AppColors.White,),
                  Text('Packages',style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.White),),
                ],
              ),
              onTap: () {
                // Handle item tap
                Navigator.pop(context); // Close the drawer
              },
            ),
            //Help Board
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.quiz_outlined,color: AppColors.White,),
                  Text('Help Board',style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.White),),
                ],
              ),
              onTap: () {
                // Handle item tap
                Navigator.pop(context); // Close the drawer
              },
            ),
            //About Us
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.feed_outlined,color: AppColors.White,),
                  Text('About Us',style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.White),),
                ],
              ),
              onTap: () {
                // Handle item tap
                Navigator.pop(context); // Close the drawer
              },
            ),
            //Contact Us
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.call,color: AppColors.White,),
                  Text('Contact Us',style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.White),),
                ],
              ),
              onTap: () {
                // Handle item tap
                Navigator.pop(context); // Close the drawer
              },
            ),
            //Call Us
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.call,color: AppColors.White,),
                  Text('Call us',style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.White),),
                ],
              ),

            ),
            //Share
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.share,color: AppColors.White,),
                  Text('Share',style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.White),),
                ],
              ),

            ),
            //Logout
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.logout,color: AppColors.White,),
                  Text('Logout',style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.White),),
                ],
              ),

            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Home Page",
          style: TextStyle(
            fontSize: 30,
            color: AppColors.White,
          ),
        ),
      ),
    );
  }
}
