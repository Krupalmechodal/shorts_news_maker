import 'package:flutter/material.dart';

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
      body: Center(child: Text("Home Page",style: TextStyle(fontSize: 30,color: AppColors.White),)),
    );
  }
}
