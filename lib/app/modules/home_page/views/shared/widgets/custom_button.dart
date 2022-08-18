import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_state/utils/app_color.dart';

class CustomButton extends StatelessWidget {
  final double buttonHeight;
  final double buttonWidth;
  final String buttonText;
  final Function() onPressed;
  const CustomButton({
    Key? key, required this.buttonHeight, required this.buttonWidth, required this.buttonText, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
            height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColors.secondary,
        ),
        child: Center(child: Text(buttonText.toUpperCase(),style: GoogleFonts.poppins(fontWeight: FontWeight.w700,fontSize: 12,color: Colors.white),)),

      ),
    );
  }
}