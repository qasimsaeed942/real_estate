import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state/utils/app_color.dart';
import '../../controllers/home_page_controller.dart';

class BottomNavBar extends GetView<HomePageController> {

  @override
  Widget build(BuildContext context) {
    return Obx(
       () {
        return BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: GestureDetector(
                    onTap: ()=> controller.isBottomIconSelected.value=1,
                    child: Column(
                      children: [
                        Icon(Icons.home_outlined,color:controller.isBottomIconSelected.value==1? AppColors.secondary:AppColors.primaryLabelColor),
                        Container( height: 2,width: 6,color: controller.isBottomIconSelected.value==1? AppColors.secondary:Colors.white,)
                      ],
                    ),
                  ),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                    onTap: ()=> controller.isBottomIconSelected.value=2,
                    child: Column(
                      children: [
                        Icon(Icons.heart_broken_outlined,color:controller.isBottomIconSelected.value==2? AppColors.secondary:AppColors.primaryLabelColor,),
                        Container( height: 2,width: 6,color:controller.isBottomIconSelected.value==2? AppColors.secondary:Colors.white,)
                      ],
                    ),
                  ),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                    onTap: ()=> controller.isBottomIconSelected.value=3,
                    child: Column(
                      children: [
                        Icon(Icons.settings_outlined,color:controller.isBottomIconSelected.value==3? AppColors.secondary:AppColors.primaryLabelColor),
                        Container( height: 2,width: 6,color:controller.isBottomIconSelected.value==3? AppColors.secondary:Colors.white,)
                      ],
                    ),
                  ),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                    onTap:()=>controller.isBottomIconSelected.value=4,
                    child: Column(
                      children: [
                        Icon(Icons.person_outline,color:controller.isBottomIconSelected.value==4? AppColors.secondary:AppColors.primaryLabelColor),
                        Container( height: 2,width: 6,color:controller.isBottomIconSelected.value==4? AppColors.secondary:Colors.white,)
                      ],
                    ),
                  ),
                  label: ""
              ),
            ]);
      }
    );
  }
}
