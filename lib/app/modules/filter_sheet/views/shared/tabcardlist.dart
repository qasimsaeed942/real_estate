import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_state/utils/app_color.dart';

class TabCardList extends StatelessWidget {

  final String svgIcon;
  final String text;
  const TabCardList({
    Key? key, required this.svgIcon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 110,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(svgIcon),
            Text(text,style: GoogleFonts.poppins(color: AppColors.primaryLabelColor),),
          ],
        ),
      ),
    );
  }
}