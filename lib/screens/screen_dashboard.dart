import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:inv_mgt/customui/stock_percent_chart.dart';
import 'package:inv_mgt/customui/weighted_score_chart.dart';
import 'package:inv_mgt/customui/weighted_score_chart.dart';
import 'package:inv_mgt/utils/colors.dart';
import 'package:pie_chart/pie_chart.dart';

class ScreenDashboard extends StatefulWidget {
  const ScreenDashboard({super.key});

  @override
  State<ScreenDashboard> createState() => _ScreenDashboardState();
}

class _ScreenDashboardState extends State<ScreenDashboard> {


  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    var Height = screensize.height;
    var Width = screensize.width;
    return Container(
      height: Height,
      width: Width,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(color: clrloginbg, width: 2.0),
        top: BorderSide(color: clrloginbg, width: 2.0),
        right: BorderSide(color: clrloginbg, width: 2.0),
      )),
      child: Column(
        children: [
          // 1st Row
          Container(
            height: 190.0,
            decoration: BoxDecoration(
              color: clrsubtlebg,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(children: [
              SizedBox(
                height: 180,
                width: Width * 0.2,
                child: Image.asset("assets/images/ladydoc.png"),
              ),
              const Spacer(),
              SizedBox(
                height: 180.0,
                width: Width * 0.3,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Never worry about your Inventory",
                        style: TextStyle(
                          fontSize: Width < 1000 ? 20 : 35.0,
                          color: clrprimary,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint("Create a bill clicked");
                        },
                        child: Container(
                          height: 40.0,
                          width: 150,
                          decoration: BoxDecoration(
                            color: clrprimary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "Create a bill",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: clrwhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
              const Spacer(),
              SizedBox(
                height: 180,
                width: Width * 0.2,
                child: Image.asset("assets/images/gentdoc.png"),
              ),
            ]),
          ),
          const SizedBox(height: 15.0),
          // 2nd row ui
          SizedBox(
            height: 170.0,
            // color: clraccenting,
            // width: Width>1100? Width : Width-80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 170.0,
                  width: Width > 1370 ? Width * 0.26 + 18 : Width * 0.25,
                  decoration: BoxDecoration(
                    color: clrwhite,
                    border: Border.all(color: clrsubtletxt),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Out of Stock Products",
                          style: TextStyle(
                            fontSize: Width > 1100 ? 24 : 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: clraccenting,
                              ),
                              child: const Icon(
                                Icons.error_outline_sharp,
                                color: clrerror,
                                size: 30,
                              ),
                            ),
                            const SizedBox(width: 30),
                            const Text(
                              "3",
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        )
                      ]),
                ),
                const SizedBox(width: 15),
                // Spacer(),
                Container(
                  height: 170.0,
                  width: Width > 1370 ? Width * 0.26 + 18 : Width * 0.25,
                  decoration: BoxDecoration(
                    color: clrwhite,
                    border: Border.all(color: clrsubtletxt),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Products on low Stock",
                          style: TextStyle(
                            fontSize: Width > 1100 ? 24 : 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.blue.shade100,
                              ),
                              child: const Icon(
                                Icons.error_outline_sharp,
                                color: clrlink,
                                size: 30,
                              ),
                            ),
                            const SizedBox(width: 30),
                            const Text(
                              "3",
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        )
                      ]),
                ),
                const SizedBox(width: 15),
                Container(
                  height: 170.0,
                  width: Width > 1370 ? Width * 0.26 + 20 : Width * 0.25,
                  decoration: BoxDecoration(
                    color: clrwhite,
                    border: Border.all(color: clrsubtletxt),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Number of Products to be arrived",
                          style: TextStyle(
                            fontSize: Width > 1100 ? 24 : 20,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.green.shade100,
                              ),
                              child: const Icon(
                                Boxicons.bxs_truck,
                                color: Colors.green,
                                size: 30,
                              ),
                            ),
                            const SizedBox(width: 30),
                            const Text(
                              "12",
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        )
                      ]),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15.0),

          // 3rd row ui
          SizedBox(
            // height: 342,
            // color: clrdark,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: Height > 800 ? Height * 0.395 : Height * 0.38,
                width: Width > 1400 ? Width * 0.42 - 1.5 : Width * 0.38 + 5,
                decoration: BoxDecoration(
                  color: clrwhite,
                  border: Border.all(color: clrsubtletxt),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Weighted Score",
                        style: TextStyle(
                          fontSize: Width > 1100 ? 24 : 20,
                          fontWeight: FontWeight.w600,
                          color: clrtxt,
                        ),
                      ),
                      WeightedScoreChart()
                      
                    ]),
              ),
              const SizedBox(width: 15.0),
              Container(
                height: Height > 800 ? Height * 0.395 : Height * 0.38,
                width: Width > 1400 ? Width * 0.42 -1.5 : Width * 0.38 + 5,
                decoration: BoxDecoration(
                  color: clrwhite,
                  border: Border.all(color: clrsubtletxt),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Stock Percentage",
                        style: TextStyle(
                          fontSize: Width > 1100 ? 24 : 20,
                          fontWeight: FontWeight.w600,
                          color: clrtxt,
                        ),
                      ),
                      const StockPercentChart(),
                      
                    ]),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

class IndicatorCircle extends StatelessWidget {
  final Color color;
  const IndicatorCircle({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
    );
  }
}
