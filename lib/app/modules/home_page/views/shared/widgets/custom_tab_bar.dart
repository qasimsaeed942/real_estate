import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../utils/app_color.dart';
import '../../../controllers/home_page_controller.dart';
import '../tab_widgets.dart';

class CustomTabBar extends GetView<HomePageController> {

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TabWidget(
            onTap: () {
              controller.isSelected.value = 1;
              print("${controller.isSelected.value}");
            },
            name: "House",
            widthOfLine: 45,
            lineColor: controller.isSelected.value == 1
                ? AppColors.secondary
                : Colors.white,
            textColor: controller.isSelected.value == 1
                ? AppColors.secondary
                : AppColors.primaryLabelColor,
          ),
          TabWidget(
            onTap: () => controller.isSelected.value = 2,
            name: "Apartment",
            widthOfLine: 73,
            lineColor: controller.isSelected.value == 2
                ? AppColors.secondary
                : Colors.white,
            textColor: controller.isSelected.value == 2
                ? AppColors.secondary
                : AppColors.primaryLabelColor,
          ),
          TabWidget(
            onTap: () => controller.isSelected.value = 3,
            name: "Villa",
            widthOfLine: 30,
            lineColor: controller.isSelected.value == 3
                ? AppColors.secondary
                : Colors.white,
            textColor: controller.isSelected.value == 3
                ? AppColors.secondary
                : AppColors.primaryLabelColor,
          ),
          TabWidget(
            onTap: () => controller.isSelected.value = 4,
            name: "Residence",
            widthOfLine: 78,
            lineColor: controller.isSelected.value == 4
                ? AppColors.secondary
                : Colors.white,
            textColor: controller.isSelected.value == 4
                ? AppColors.secondary
                : AppColors.primaryLabelColor,
          ),
        ],
      );
    });
  }
}