import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_state/app/modules/filter_sheet/views/shared/iconandtext.dart';
import 'package:real_state/app/modules/filter_sheet/views/shared/tabcardlist.dart';
import 'package:real_state/app/modules/home_page/views/shared/search_bar.dart';
import 'package:real_state/utils/app_color.dart';

import '../../home_page/views/shared/bottom_nav_bar.dart';
import '../controllers/filter_sheet_controller.dart';

class FilterSheetView extends GetView<FilterSheetController> {
  const FilterSheetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title:  Text('List',style: GoogleFonts.poppins(color: AppColors.primary,fontWeight: FontWeight.w600,fontSize: 16),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearchBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TabCardList(svgIcon: "assets/svgs/filter.svg",text: "Filter",),
                TabCardList(svgIcon: "assets/svgs/filter.svg",text: "Sort By",),
                TabCardList(svgIcon: "assets/svgs/filter.svg",text: "Map",),
              ],
            ),
            Text('16 Results Found',style: GoogleFonts.poppins(color: AppColors.primary,fontWeight: FontWeight.w500,fontSize: 16),),
            Container(
              height: 450,
              width: 400,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context,index)=>Container(
                  height:150,
                  width: 270,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height:120,
                            width: 110,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.pink.withOpacity(0.1),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Filter".toUpperCase(),
                                    style: GoogleFonts.poppins(
                                        color: AppColors.primary,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                  SizedBox(width: 110,),
                                  SvgPicture.asset("assets/svgs/heart.svg",color: AppColors.primaryLabelColor),

                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined,color: AppColors.primaryLabelColor),
                                  Text("New York, USA",style: TextStyle(color: AppColors.primaryLabelColor),)
                                ],
                              ),
                              Row(
                                children: [
                                  IconAndText(text: "165 m",svgPicture: "assets/svgs/box.svg"),
                                  SizedBox(width: 10,),
                                  IconAndText(text: "2 bathrooms",svgPicture: "assets/svgs/bath.svg"),
                                ],
                              ),

                              Row(
                                children: [
                                  Text("\$2100",style: GoogleFonts.poppins(color: AppColors.secondary,fontSize: 16,fontWeight: FontWeight.w400),),
                                  Text("/month",style: GoogleFonts.poppins(color: AppColors.primaryLabelColor,fontSize: 16),)
                                ],
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                ),),
            ),
          ],
        ),
      ),
    );
  }
}


