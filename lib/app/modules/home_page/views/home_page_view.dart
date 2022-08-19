import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:real_state/app/routes/app_pages.dart';
import 'package:real_state/utils/app_color.dart';

import '../controllers/home_page_controller.dart';
import 'shared/bottom_nav_bar.dart';
import 'shared/search_bar.dart';
import 'shared/tab_widgets.dart';

class HomePageView extends GetView<HomePageController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Icon(Icons.person),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Text('Home',style: TextStyle(color: AppColors.primary),),
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.primary),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's find your dream house",
                style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10,),
              SearchBar(),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Get.toNamed(Routes.FILTER_SHEET);
                },
                child: Text(
                  "Categories".toUpperCase(),
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 20,),
              ///Tabs View
               Obx(
                 () {
                   return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            TabWidget(
                                onTap: (){
                                  controller.isSelected.value=1;
                                  print("${controller.isSelected.value}");
                                },
                                name: "House",
                                widthOfLine: 45,
                                lineColor: controller.isSelected.value==1?AppColors.secondary:Colors.white,
                                textColor: controller.isSelected.value==1?AppColors.secondary:AppColors.primaryLabelColor,
                              ),
                          TabWidget(
                            onTap: ()=>controller.isSelected.value=2,
                            name: "Apartment",
                            widthOfLine: 73,
                            lineColor: controller.isSelected.value==2?AppColors.secondary:Colors.white,
                            textColor: controller.isSelected.value==2?AppColors.secondary:AppColors.primaryLabelColor,
                          ),
                          TabWidget(
                            onTap: ()=>controller.isSelected.value=3,
                            name: "Villa",
                            widthOfLine: 30,
                            lineColor: controller.isSelected.value==3?AppColors.secondary:Colors.white,
                            textColor: controller.isSelected.value==3?AppColors.secondary:AppColors.primaryLabelColor,
                          ),

                          TabWidget(
                            onTap: ()=>controller.isSelected.value=4,
                            name: "Residence",
                            widthOfLine: 78,
                            lineColor: controller.isSelected.value==4?AppColors.secondary:Colors.white,
                            textColor: controller.isSelected.value==4?AppColors.secondary:AppColors.primaryLabelColor,
                          ),
                        ],
                      );
                 }
               ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Properties Nearby".toUpperCase(),
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: AppColors.primary),
                  ),
                  TextButton(onPressed: (){
                    Get.toNamed(Routes.PROPERTIES_DETAILS);
                  },
                      child: Text("View All",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.primary),))
                ],
              ),
              Container(
                height: 350,
                width: 400,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                    itemBuilder: (context,index)=>Container(
                      height: 350,
                      width: 270,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 200,
                                width: 240,
                                child: Stack(
                                  children: [
                                    Container(
                                        height: 200,
                                        width: 240,
                                        child: Image.asset("assets/images/pic.png",fit: BoxFit.fill,)
                                    ),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text("\$1800",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: AppColors.secondary),))
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Exclusive House",
                                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.primary),
                                  ),
                                  SizedBox(width: 50,),
                                  Icon(Icons.star,color: AppColors.primaryIconColor),
                                  SizedBox(width: 8,),
                                  Text("4.8",style: TextStyle(color: AppColors.primaryLabelColor),)
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined,color: AppColors.primaryLabelColor),
                                  SizedBox(width: 8,),
                                  Text("New York, USA",style: TextStyle(color: AppColors.primaryLabelColor),)
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined,color: AppColors.primaryIconColor),
                                  SizedBox(width: 8,),
                                  Text("170 m",style: TextStyle(color: AppColors.primaryLabelColor),),
                                  SizedBox(width: 30,),
                                  Icon(Icons.bathtub_outlined,color: AppColors.primaryIconColor),
                                  SizedBox(width: 8,),
                                  Text("2 bathrooms",style: TextStyle(color: AppColors.primaryLabelColor),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





