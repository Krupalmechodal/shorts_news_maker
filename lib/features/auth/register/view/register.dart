import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../../../res/color/app_colors.dart';
import '../../../../utils/custom_text_form_field.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController NameCtrl = TextEditingController();
  TextEditingController NumberCtrl = TextEditingController();
  TextEditingController PwdCtrl = TextEditingController();
  TextEditingController Pwd2Ctrl = TextEditingController();

  File? _selectedImage; // Variable to store the selected image

  // Function to pick an image from the gallery
  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _selectedImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Text(
                "Register Your Account In News Maker",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: AppColors.Green,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 30),
              Stack(
                children: [
                  // Circular Image
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: _selectedImage != null
                        ? FileImage(_selectedImage!)
                        : const AssetImage("assets/auth_img/person.jpg")
                    as ImageProvider,
                  ),
                  // Edit Icon Positioned at the bottom right
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: _pickImage, // Call the image picker on tap
                      child: Container(
                        width: 30, // Icon container size
                        height: 30,
                        decoration: BoxDecoration(
                          color: AppColors.Green, // Background color of the icon
                          shape: BoxShape.circle,
                        ),
                        child:  Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 18, // Icon size
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              CostomTextFilled(
                controller: NameCtrl,
                keybordType: TextInputType.name,
                hintText: 'Enter Your Name',
                name: 'Name :',
                prefixIcon: Icon(Icons.person, color: AppColors.White),
              ),
              CostomTextFilled(
                controller: NumberCtrl,
                maxlength: 10,
                keybordType: TextInputType.number,
                hintText: 'Enter Your Mobile Number',
                name: 'Mobile No :',
                prefixIcon: Icon(Icons.phone, color: AppColors.White),
              ),
              CostomTextFilled(
                controller: PwdCtrl,
                keybordType: TextInputType.name,
                hintText: 'Enter Your Password',
                name: 'Password  :',
                prefixIcon: Icon(Icons.lock, color: AppColors.White),
              ),
              CostomTextFilled(
                controller: Pwd2Ctrl,
                keybordType: TextInputType.name,
                hintText: 'Enter Your Confirm Password',
                name: 'Confirm Password  :',
                prefixIcon: Icon(Icons.lock, color: AppColors.White),
              ),
               SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "You Have Already Registered  ",
                    style: GoogleFonts.poppins(
                      color: AppColors.White,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Login",
                      style: GoogleFonts.poppins(
                        color: AppColors.Blue,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
               SizedBox(height: 20),
              InkWell(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.Green,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "Register",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        color: AppColors.White,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}