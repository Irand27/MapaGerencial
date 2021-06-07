import 'package:flutter/material.dart';
import 'package:projeto_principal/pages/home/charts/chart_bar.dart';
import 'package:projeto_principal/pages/home/charts/chart_bubble.dart';
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
                      child: Icon(Icons.bar_chart),
                    ),
                  ),
                  Tab(
                    child: Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.bubble_chart)),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            ChartsPie(
              pieData: [
                ChartSampleData(
                  x: 'Coca',
                  y: 30,
                  text: 'Coca \n 30%',
                  pointColor: Color(0xff93A6DF),
                ),
                ChartSampleData(
                  x: 'Fanta',
                  y: 35,
                  text: 'Fanta \n 35%',
                  pointColor: Color(0xff8E8AFB),
                ),
                ChartSampleData(
                  x: 'Uva',
                  y: 39,
                  text: 'Uva \n 39%',
                  pointColor: Color(0xff453FFA),
                ),
                ChartSampleData(
                  x: 'Antartida',
                  y: 75,
                  text: 'Esta \n 75%',
                  pointColor: Color(0xff4A6CCE),
                ),
              ],
            ),
            ChartBubble(),
            ChartBar(),
          ]),
        ));
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: Stack(
    //     children: [
    //       Container(
    //         height: double.infinity,
    //         width: double.infinity,
    //         decoration: BoxDecoration(
    //           gradient: LinearGradient(
    //               begin: Alignment.topCenter,
    //               end: Alignment.bottomCenter,
    //               colors: [
    //                 Color(0xFF73AEF5),
    //                 Color(0xFF61A4F1),
    //                 Color(0xFF478DE0),
    //                 Color(0xFF398AE5),
    //               ],
    //               stops: [
    //                 0.1,
    //                 0.4,
    //                 0.7,
    //                 0.9,
    //               ]),
    //         ),
    //       ),
    // ListView.builder(
    //     padding: const EdgeInsets.all(8),
    //     itemCount: entries.length,
    //     itemBuilder: (BuildContext context, int index) {
    //       return Container(
    //         height: MediaQuery.of(context).size.height * 0.5,
    //         decoration: BoxDecoration(
    //           color: Colors.redAccent,
    //           borderRadius: BorderRadius.circular(15),
    //         ),
    //         margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.stretch,
    //           children: [
    //             Container(
    //               width: double.infinity,
    //               color: Colors.orangeAccent,
    //               child: Padding(
    //                 padding: const EdgeInsets.all(4.0),
    //                 child: Text(
    //                   'Entry ${entries[index]}',
    //                   style: TextStyle(
    //                     color: Colors.black,
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.bold,
    //                     fontFamily: 'OpenSans',
    //                   ),
    //                   textAlign: TextAlign.center,
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       );
    //     }),
//         ],
//       ),
//     );
//   }
// }
  }
}
