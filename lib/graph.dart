import 'package:flutter/material.dart';
import 'package:time_chart/time_chart.dart';

class GraphPage2 extends StatelessWidget {
  final data = [
    DateTimeRange(
      start: DateTime(2021, 2, 24, 23, 15),
      end: DateTime(2021, 2, 25, 7, 30),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 22, 1, 55),
      end: DateTime(2021, 2, 22, 9, 12),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 20, 0, 25),
      end: DateTime(2021, 2, 20, 7, 34),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 17, 21, 23),
      end: DateTime(2021, 2, 18, 4, 52),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 13, 6, 32),
      end: DateTime(2021, 2, 13, 13, 12),
    ),
    DateTimeRange(
      start: DateTime(2021, 2, 1, 9, 32),
      end: DateTime(2021, 2, 1, 15, 22),
    ),
    DateTimeRange(
      start: DateTime(2021, 1, 22, 12, 10),
      end: DateTime(2021, 1, 22, 16, 20),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Column(
              children: [
                Text(
                  'Overall Performance',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Text(
                  'Jan 06-jan 12',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                )
              ],
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.redAccent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.white, Colors.white70]),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueAccent),
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Weekly"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Monthly"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("All Time"),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            TimeChart(
              data: data,
              viewMode: ViewMode.weekly,
            ),
            TimeChart(
              data: data,
              viewMode: ViewMode.monthly,
            ),
            TimeChart(
              data: data,
              chartType: ChartType.amount,
              viewMode: ViewMode.monthly,
              barColor: Colors.deepPurple,
            ),
          ]),
        ));
  }
}
