import 'package:flutter/material.dart';

import '../../../../res/color/app_colors.dart';
class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Black,
      body: Center(child: Text("Subscription Page",style: TextStyle(fontSize: 30,color: AppColors.White),)),
    );
  }
}
