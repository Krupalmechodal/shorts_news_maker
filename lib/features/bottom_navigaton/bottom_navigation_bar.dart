import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../res/color/app_colors.dart';
import 'bottom_pages/home/home.dart';
import 'bottom_pages/profile/profile.dart';
import 'bottom_pages/subscription/subscription.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTab = 2;
  final List<Widget> screens = [
    Home(),
    Subscription(),
    Profile(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.Black,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 5),
          shape: BoxShape.circle,
        ),
        child: FloatingActionButton(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Image.asset(
              'assets/image/home/home.png',
              fit: BoxFit.cover,
            ),
          ),
          onPressed: () {
            setState(() {
              currentScreen = Home();
              currentTab = 2;
            });
          },
          shape: CircleBorder(),
          backgroundColor: AppColors.Green,
        ),
      ),
      // Ensuring the FAB is circular
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: AppColors.Green,
        shape: CircularNotchedRectangle(),
        notchMargin: 2,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen = Profile();
                  currentTab = 1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.person_alt,size: 30,
                    color: currentTab == 1 ? AppColors.btmOrange : Colors.white,
                  ),
                  Text(
                    "Profile",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: currentTab == 1 ? AppColors.btmOrange : Colors.white,
                    ),
                  )
                ],
              ),
            ),
            // Right Side Buttons
            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen = Subscription();
                  currentTab = 3;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_active,size: 30,
                    color: currentTab == 3 ? AppColors.btmOrange : Colors.white,
                  ),
                  Text(
                    "Subscription",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: currentTab == 3 ? AppColors.btmOrange : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
