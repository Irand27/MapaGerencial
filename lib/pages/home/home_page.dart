import 'package:flutter/material.dart';
import 'package:projeto_principal/pages/home/charts/chart_line.dart';
import 'package:projeto_principal/pages/home/charts/chart_add.dart';
import 'package:projeto_principal/pages/home/charts/chart_pie.dart';
import 'package:projeto_principal/pages/home/charts/data_charts.dart';

class HomePage extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 300];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Mapa Gerencial'),
            elevation: 0,
            bottom: TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.white),
                tabs: [
                  Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.pie_chart)),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.stacked_line_chart),
                    ),
                  ),
                  Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.add_chart)),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            ChartsPie(
              pieData: [
                ChartSampleData(
                  x: 'Coca',
                  y: 30,
                  text: 'Produto A \n 30%',
                  pointColor: Color(0xff93A6DF),
                ),
                ChartSampleData(
                  x: 'Fanta',
                  y: 35,
                  text: 'Produto B \n 35%',
                  pointColor: Color(0xff8E8AFB),
                ),
                ChartSampleData(
                  x: 'Uva',
                  y: 39,
                  text: 'Produto C \n 39%',
                  pointColor: Color(0xff453FFA),
                ),
                ChartSampleData(
                  x: 'Antartida',
                  y: 75,
                  text: 'Produto D \n 75%',
                  pointColor: Color(0xff4A6CCE),
                ),
              ],
            ),
            ChartsLine(),
            ChartBubble(),
          ]),
        ));
  }
}
