import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../res/color/app_colors.dart';

// Define the BlueText widget
class BlueText extends StatelessWidget {
  final String text;

  const BlueText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: AppColors.White,
      ),
    );
  }
}

class CostomTextFilled extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String name;
  final TextInputType? keybordType;
  final int? maxlength;
  final int? maxLines;
  final String? Function(String? val)? validator;
  final Icon? prefixIcon; // Optional prefix icon

  CostomTextFilled({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.name,
    this.keybordType,
    this.validator,
    this.maxlength,
    this.maxLines,
    this.prefixIcon, // Add prefix icon parameter
  }) : super(key: key);

  @override
  State<CostomTextFilled> createState() => _CostomTextFilledState();
}

class _CostomTextFilledState extends State<CostomTextFilled> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlueText(text: widget.name), // Use widget.name
        SizedBox(height: h * 0.006),
        TextFormField(
          style: TextStyle(color: AppColors.White),
          keyboardType: widget.keybordType,
          maxLength: widget.maxlength,
          validator: widget.validator,
          maxLines: widget.maxLines, // Use maxLines parameter
          controller: widget.controller,
          cursorColor: AppColors.White,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.DullBlack,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            hintStyle: GoogleFonts.lato(
              color: Colors.white.withOpacity(0.20),
              fontWeight: FontWeight.w400,
              fontSize: h * 0.018,
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: h * 0.017,
              horizontal: w * 0.04,
            ),
            hintText: widget.hintText,
            prefixIcon: widget.prefixIcon, // Add prefix icon
          ),
        ),
        SizedBox(height: h * 0.012),
      ],
    );
  }
}
