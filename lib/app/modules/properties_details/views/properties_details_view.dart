import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_state/app/modules/filter_sheet/views/shared/iconandtext.dart';
import 'package:real_state/app/modules/properties_details/views/shared/sliding_picture.dart';
import 'package:real_state/utils/app_color.dart';

import '../controllers/properties_details_controller.dart';

class PropertiesDetailsView extends GetView<PropertiesDetailsController> {
  const PropertiesDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title:  Text('Property Details',style: GoogleFonts.poppins(color: AppColors.primary,fontWeight: FontWeight.w600,fontSize: 16),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
              height: 439,
              width: 386,
            child: Card(
              child: Column(
                children: [
                  Container(
                      height: 261,
                      width: 358,
                      child: CarouselWithIndicatorState()),
                  Text("Dream House",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: AppColors.primary),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconAndText(svgPicture: "assets/svgs/box.svg", text: "230m"),
                      IconAndText(svgPicture: "assets/svgs/bed.svg", text: "4 bedrooms"),
                      IconAndText(svgPicture: "assets/svgs/bath.svg", text: "4 bathrooms"),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Container(
                          height:56,
                          width: 56,
                          child: FloatingActionButton.large(onPressed: (){},backgroundColor: Colors.pink.withOpacity(0.1),elevation: 0,)),
                    ],
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



