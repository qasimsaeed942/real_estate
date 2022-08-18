import 'package:flutter/material.dart';
import 'package:real_state/utils/app_color.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomChartData extends StatelessWidget {
  const CustomChartData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        child: SfCartesianChart(
          margin: EdgeInsets.zero,
          primaryXAxis: NumericAxis(isVisible: false),
          primaryYAxis: NumericAxis(isVisible: false,maximum: 10),
          series: [
            SplineAreaSeries(
              color: AppColors.secondary,
              dataSource:getChartData(),
              xValueMapper: (Data sales,int index )=> sales.x,
              yValueMapper: (Data sales,int index )=> sales.y,)
          ],
        ));
  }
  List <Data>  getChartData(){
    return <Data>[
      Data(x: 2,y: 2.3),
      Data(x: 3,y: 5),
      Data(x: 4,y: 2.5),
      Data(x: 5,y: 8),
      Data(x: 6,y: 2.7),
      Data(x: 7,y: 10),
      Data(x: 8,y: 2.9),
      Data(x: 9,y: 3),
    ] ;
  }
}
class Data{
  final double x;
  final double y;
  Data({required this.x, required this.y});

}