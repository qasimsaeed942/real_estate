import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
            color: Colors.pink,
              height: 200,
              width: 500,
              child: CarouselWithIndicatorState()),
        ],
      ),
    );
  }
}



