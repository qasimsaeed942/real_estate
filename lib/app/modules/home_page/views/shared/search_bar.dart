import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state/utils/app_color.dart';
import '../../controllers/home_page_controller.dart';
import 'filter_view.dart';

class SearchBar extends GetView<HomePageController>  {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            filled: true,
            hintStyle: TextStyle(color:AppColors.primaryLabelColor),
            hintText: "Search",
            suffixIcon: GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return FilterViewDesign();
                    },
                  );
                },
                child: Icon(Icons.bar_chart_outlined,color: AppColors.primaryLabelColor,)),
            prefixIcon: Icon(Icons.search_outlined,color: AppColors.primaryLabelColor,),
            fillColor: Colors.white70),
      ),
    );
  }
}

