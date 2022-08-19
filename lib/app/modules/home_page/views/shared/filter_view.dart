import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_state/app/modules/home_page/views/shared/widgets/chart_data.dart';
import 'package:real_state/app/modules/home_page/views/shared/widgets/custom_button.dart';
import 'package:real_state/utils/app_color.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../../controllers/home_page_controller.dart';
import 'widgets/bathroom_list_view.dart';
import 'widgets/custom_tab_bar.dart';
import 'widgets/room_list_view.dart';

class FilterViewDesign extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 5,
                  width: 40,
                  color: AppColors.primaryLabelColor,
                ),
              ],
            ),
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
                GestureDetector(
                    onTap: () => Get.back(),
                    child: Icon(
                      Icons.close,
                      color: AppColors.primaryLabelColor,
                    )),
              ],
            ),
            Text(
              "Categories".toUpperCase(),
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            ///Tabs View
            CustomTabBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price Range".toUpperCase(),
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary),
                ),
                Text(
                  "\$${controller.startValue.value.toInt()} - \$${controller.endValue.value.toInt()}",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondary),
                )
              ],
            ),
            Container(
              width: 600,
              child: SfRangeSelector(
                activeColor: AppColors.secondary,
                inactiveColor: AppColors.primaryLabelColor.withOpacity(0.5),
                child: CustomChartData(),
                onChanged: (value) {},
                initialValues: SfRangeValues(3, 5),
                min: 2,
                max: 10,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Properties Size".toUpperCase(),
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary),
                ),
                Obx(
                   () {
                    return Text(
                      "\$${controller.startValue.value.toInt()}m - \$${controller.endValue.value.toInt()}m",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondary),
                    );
                  }
                )
              ],
            ),
            Container(
              width: 600,
              child: SfRangeSelector(
                activeColor: AppColors.secondary,
                inactiveColor: AppColors.primaryLabelColor,
                child: Container(),
                onChanged: (value) {
                  controller.startValue.value = value.start as double;
                  controller.endValue.value = value.end as double;

                    //value = SfRangeValues(controller.startValue.value , controller.endValue.value);
                  //print("Start ${value.start} | end : ${value.end}");
                  print("Start ${controller.startValue.value.toInt()} | end : ${controller.endValue.value.toInt()}");
                },
                initialValues: SfRangeValues(controller.startValue.value, controller.endValue.value),
                min: 2,
                max: 10,
              ),
            ),
            Text(
              "Rooms".toUpperCase(),
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary),
            ),
            RoomListView(),
            Text(
              "Bath Rooms".toUpperCase(),
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary),
            ),
            BathRoomListView(),
            CustomButton(
                buttonHeight: 48,
                buttonWidth: 386,
                buttonText: "see result",
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
