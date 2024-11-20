import 'package:flutter/material.dart';

import '../../../../res/color/app_colors.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Black,
      body: Center(child: Text("Profile Page",style: TextStyle(fontSize: 30,color: AppColors.White),)),
    );
  }
}
