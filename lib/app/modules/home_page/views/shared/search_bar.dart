import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state/utils/app_color.dart';
import '../../controllers/home_page_controller.dart';

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
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 600,
                        color: Colors.amber,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text('Modal BottomSheet'),
                              ElevatedButton(
                                child: const Text('Close BottomSheet'),
                                onPressed: () => Navigator.pop(context),
                              )
                            ],
                          ),
                        ),
                      );
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