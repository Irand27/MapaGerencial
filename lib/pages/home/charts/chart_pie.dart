import 'package:flutter/material.dart';
import 'package:projeto_principal/pages/home/charts/data_charts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartsPie extends StatefulWidget {
  final List<ChartSampleData> pieData;
  const ChartsPie({Key key, this.pieData}) : super(key: key);

  @override
  _SyncFusionFlutterChartsPieState createState() =>
      _SyncFusionFlutterChartsPieState();
}

class _SyncFusionFlutterChartsPieState extends State<ChartsPie> {
  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      series: _getDefaultPieSeries(),
    );
  }

  List<PieSeries<ChartSampleData, String>> _getDefaultPieSeries() {
    return <PieSeries<ChartSampleData, String>>[
      PieSeries<ChartSampleData, String>(
        pointColorMapper: (ChartSampleData data, _) => data.pointColor,
        explode: true,
        explodeIndex: 0,
        explodeOffset: '10%',
        dataSource: widget.pieData,
        xValueMapper: (ChartSampleData data, _) => data.x,
        yValueMapper: (ChartSampleData data, _) => data.y,
        dataLabelMapper: (ChartSampleData data, _) => data.text,
        startAngle: 90,
        endAngle: 90,
        dataLabelSettings: DataLabelSettings(isVisible: true),
      ),
    ];
  }
}
