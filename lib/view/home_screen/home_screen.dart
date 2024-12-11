import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<String> imagePaths = const [
    "assets/images/pic1.jpeg",
    "assets/images/pic2.jpeg",
    "assets/images/pic3.webp",
    "assets/images/pic4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    final List<IncomeSpendingData> chartData = [
      IncomeSpendingData(DateTime(2020, 1, 1), 5000, 3000),
      IncomeSpendingData(DateTime(2020, 2, 1), 5500, 3400),
      IncomeSpendingData(DateTime(2020, 3, 1), 6000, 3500),
      IncomeSpendingData(DateTime(2020, 4, 1), 6100, 4600),
      IncomeSpendingData(DateTime(2020, 5, 1), 7000, 4300),
      IncomeSpendingData(DateTime(2020, 6, 1), 7900, 4500),
      IncomeSpendingData(DateTime(2020, 7, 1), 7200, 3800),
      //IncomeSpendingData(DateTime(2020, 8, 1), 8600, 4800),
      //IncomeSpendingData(DateTime(2020, 9, 1), 8900, 5000),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "FIT",
              style: GoogleFonts.protestGuerrilla(
                color: Colors.white,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w200,
                fontSize: 25,
              ),
            ),
            Text(
              "FLOW",
              style: GoogleFonts.protestGuerrilla(
                color: Colors.amber,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w200,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            //main column
            children: [
              CarouselSlider(
                //carousel slider
                options: CarouselOptions(
                  height: 200,
                  viewportFraction: 1,
                  reverse: false,
                  autoPlay: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: imagePaths.map((imagePath) {
                  return Padding(
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      height: 250,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  //row for heading
                  children: [
                    Text(
                      "Income & Spent",
                      style: GoogleFonts.cormorantGaramond(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 27,
                          decoration: TextDecoration.underline),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.square,
                              size: 12,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Income",
                              style: GoogleFonts.cormorantGaramond(
                                  color: Colors.white, letterSpacing: 1),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.square,
                              size: 12,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Spent",
                              style: GoogleFonts.cormorantGaramond(
                                  color: Colors.white, letterSpacing: 1),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              //graph
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                    ),
                    child: SfCartesianChart(
                        plotAreaBackgroundColor: Colors.white.withOpacity(0.1),
                        primaryXAxis: DateTimeAxis(),
                        series: <CartesianSeries>[
                          LineSeries<IncomeSpendingData, DateTime>(
                              name: 'Income',
                              dataSource: chartData,
                              xValueMapper: (IncomeSpendingData data, _) =>
                                  data.date,
                              yValueMapper: (IncomeSpendingData data, _) =>
                                  data.income,
                              color: Colors.green),
                          LineSeries<IncomeSpendingData, DateTime>(
                              name: 'Spending',
                              dataSource: chartData,
                              xValueMapper: (IncomeSpendingData data, _) =>
                                  data.date,
                              yValueMapper: (IncomeSpendingData data, _) =>
                                  data.spending,
                              color: Colors.red),
                        ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IncomeSpendingData {
  IncomeSpendingData(this.date, this.income, this.spending);
  final DateTime date;
  final double income;
  final double spending;
}
