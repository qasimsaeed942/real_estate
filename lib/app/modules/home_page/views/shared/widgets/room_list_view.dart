import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_state/utils/app_color.dart';

import '../../../controllers/home_page_controller.dart';

class RoomListView extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => Obx(() {
          return Row(
            children: [
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  controller.roomCount.value = index;
                },
                child: Container(
                  height: 37,
                  width: 47,
                  child: Card(
                    color: controller.roomCount.value == index
                        ? AppColors.secondary
                        : null,
                    child: Center(
                        child: Text(
                          "$index",
                          style: GoogleFonts.poppins(
                            color: controller.roomCount.value == index
                                ? Colors.white
                                : Colors.black,
                          ),
                        )),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}