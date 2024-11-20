import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shorts_news_maker/res/color/app_colors.dart';

import '../../../../utils/custom_text_form_field.dart';
import '../../../bottom_navigaton/bottom_navigation_bar.dart';
import '../../register/view/register.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController NumberCtrl = new TextEditingController();
  TextEditingController PwdCtrl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Black,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100,),
                Text("Welcome Back To News Maker",textAlign: TextAlign.center,style: GoogleFonts.poppins(color: AppColors.Green,fontSize: 20,fontWeight: FontWeight.w800),),
                SizedBox(height: 30,),
                CostomTextFilled(controller: NumberCtrl,maxlength: 10,keybordType: TextInputType.number, hintText: 'Enter Your Mobile Number', name: 'Mobile No :',prefixIcon: Icon(Icons.phone, color: AppColors.White),),
                CostomTextFilled(controller: PwdCtrl,keybordType: TextInputType.name, hintText: 'Enter Your Password', name: 'Password  :',prefixIcon: Icon(Icons.lock, color: AppColors.White),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(onTap: (){
                      Get.to(() => Register());
                    }, child: Text("Register Account",style: GoogleFonts.poppins(color: AppColors.White,fontSize: 13,fontWeight: FontWeight.w600),)),
                    GestureDetector(onTap: (){}, child: Text("Forgot Password?",style: GoogleFonts.poppins(color: AppColors.White,fontSize: 13,fontWeight: FontWeight.w600),)),
                  ],
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){Get.to(() => BottomNavigation());},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.Green,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Text("Login",style: GoogleFonts.poppins(fontWeight: FontWeight.w700,color: AppColors.White,fontSize: 20),)),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}