import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_state/app/modules/home_page/views/shared/search_bar.dart';
import 'package:real_state/utils/app_color.dart';

import '../controllers/filter_sheet_controller.dart';

class FilterSheetView extends GetView<FilterSheetController> {
  const FilterSheetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title:  Text('List',style: GoogleFonts.poppins(color: AppColors.primary,fontWeight: FontWeight.w600,fontSize: 16),),
        centerTitle: true,
      ),
      body: Column(
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
            height: 560,
            width: 400,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context,index)=>Container(
                height:200,
                width: 270,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height:150,
                          width: 120,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.pink.withOpacity(0.1),),
                        ),
                        Column(
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
                                Icon(
                                  Icons.close,
                                  color: AppColors.primaryLabelColor,
                                ),
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
    );
  }
}

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
