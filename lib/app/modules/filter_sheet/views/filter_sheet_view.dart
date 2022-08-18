import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/filter_sheet_controller.dart';

class FilterSheetView extends GetView<FilterSheetController> {
  const FilterSheetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FilterSheetView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FilterSheetView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
