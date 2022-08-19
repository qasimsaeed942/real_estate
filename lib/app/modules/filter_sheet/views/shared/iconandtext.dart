
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/app_color.dart';

class IconAndText extends StatelessWidget {
  final String svgPicture;
  final String text;
  const IconAndText({
    Key? key, required this.svgPicture, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(svgPicture,color: AppColors.primaryIconColor),
        SizedBox(width: 5,),
        Text(text,style: GoogleFonts.poppins(color: AppColors.primaryLabelColor,fontSize: 12,fontWeight: FontWeight.w400),),

      ],
    );
  }
}
