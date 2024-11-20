import 'package:flutter/material.dart';

import '../../../../res/color/app_colors.dart';
import '../../../bottom_navigaton/bottom_navigation_bar.dart';
import '../../../bottom_navigaton/bottom_pages/home/home.dart';
import '../../login/view/login.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()), // Replace NextScreen with your desired screen
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.Black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: screenHeight*0.4,
              width: screenWidth-30,
              decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.cover, image: AssetImage("assets/auth_img/logo.png"),)
            ),
                // child: Image.asset("assets/auth_img/logo.png")
            ),
            Text("News Report \n  Shorts Creator",textAlign:TextAlign.center,style: TextStyle(fontSize: 30,color: AppColors.White),),
          ],
        ),
      )
    );
  }
}
