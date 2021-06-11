import 'package:flutter/material.dart';
import 'package:projeto_principal/pages/home/charts/data_charts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartsLine extends StatefulWidget {
  const ChartsLine({Key key}) : super(key: key);

  @override
  _SyncFusionFlutterChartsLineState createState() =>
      _SyncFusionFlutterChartsLineState();
}

class _SyncFusionFlutterChartsLineState extends State<ChartsLine> {
  _SyncFusionFlutterChartsLineState();

  @override
  Widget build(BuildContext context) {
    return _getDefaultLineChart();
  }

  SfCartesianChart _getDefaultLineChart() {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title: ChartTitle(text: ''),
      legend: Legend(
        isVisible: false,
        overflowMode: LegendItemOverflowMode.wrap,
      ),
      primaryXAxis: NumericAxis(
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        interval: 2,
        majorGridLines: MajorGridLines(
          width: 0,
        ),
      ),
      primaryYAxis: NumericAxis(
        labelFormat: '{value}%',
        axisLine: AxisLine(width: 0),
        majorTickLines: MajorTickLines(
          color: Colors.transparent,
        ),
      ),
      series: _getDefaultLineSeries(),
      tooltipBehavior: TooltipBehavior(
        enable: true,
      ),
    );
  }

  List<LineSeries<ChartSampleData, num>> _getDefaultLineSeries() {
    final chartData = <ChartSampleData>[
      ChartSampleData(x: 1, y: 21, y2: 28),
      ChartSampleData(x: 2, y: 24, y2: 44),
      ChartSampleData(x: 3, y: 36, y2: 48),
      ChartSampleData(x: 4, y: 38, y2: 50),
      ChartSampleData(x: 5, y: 54, y2: 66),
      ChartSampleData(x: 6, y: 57, y2: 78),
      ChartSampleData(x: 7, y: 70, y2: 84)
    ];

    return <LineSeries<ChartSampleData, num>>[
      LineSeries<ChartSampleData, num>(
        color: Colors.blue,
        animationDuration: 2500,
        dataSource: chartData,
        xValueMapper: (ChartSampleData sales, _) => sales.x,
        yValueMapper: (ChartSampleData sales, _) => sales.y,
        width: 2,
        name: 'Produto 1',
        markerSettings: MarkerSettings(isVisible: true),
      ),
      LineSeries<ChartSampleData, num>(
        animationDuration: 2500,
        dataSource: chartData,
        width: 2,
        name: 'Produto 2',
        xValueMapper: (ChartSampleData sales, _) => sales.x,
        yValueMapper: (ChartSampleData sales, _) => sales.y2,
        markerSettings: MarkerSettings(
          isVisible: true,
        ),
      ),
    ];
  }
}
