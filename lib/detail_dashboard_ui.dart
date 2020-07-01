import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
class DetailDashboardPage extends StatefulWidget {
  @override
  _DetailDashboardPageState createState() => _DetailDashboardPageState();
}

class _DetailDashboardPageState extends State<DetailDashboardPage> {

  Color primaryColor = Color.fromRGBO(255, 82, 48, 1);


  @override
  Widget build(BuildContext context) {
    var data = [
      ClickPerMonth("Jan", 30, Colors.purple),
      ClickPerMonth("Jan", 42, Colors.blue),
      ClickPerMonth("Jan", 54, Colors.purple),
      ClickPerMonth("Jan", 20, Colors.blue),
      ClickPerMonth("Jan", 76, Colors.purple),
      ClickPerMonth("Jan", 35, Colors.blue),
    ];

    var series = [
      charts.Series(
        id: "Clicks",
        domainFn: (ClickPerMonth clickData, _) => clickData.month,
        measureFn: (ClickPerMonth clickData, _) => clickData.click,
        colorFn: (ClickPerMonth clickData, _) => clickData.color,
        data: data)
    ];

    var chart = charts.BarChart(
      series, animate: true,
      animationDuration: Duration(microseconds: 1500),
    );

    var chartWidget = Padding(
      padding: EdgeInsets.all(32.0),
      child: SizedBox(
        height: 180.0,
        child: chart,
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 30.0,
                  right: 15.0,
                  left: 15.0
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.black54,
                      iconSize: 30.0,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      color: Colors.black54,
                      iconSize: 30.0,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 30.0
              ),
              child: Text("Dashboard",
              style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontWeight: FontWeight.bold,
                fontSize: 32.0
              ),),

            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0
              ),
              child: Container(
                width: double.infinity,
                height: 370.0,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0.0, 0.3),
                      blurRadius: 15.0
                    ),
                  ]),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 25.0
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("£32,000",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 15.0,),
                              Text("Available Balance",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.show_chart),
                            color: Colors.white,
                            iconSize: 30.0,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    chartWidget
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25.0, right: 25.0, top: 30.0
              ),
              child: Text("Recent Activity",
              style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: EdgeInsets.only(
                left: 25.0, right: 25.0, bottom: 10.0
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5.0
                    ),
                    child: Row(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.purple.withOpacity(0.1),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text("DA",
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                        SizedBox(width: 25.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Load Activity",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                              ),),
                              Text("Send Money",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),
                        ),
                        Text(
                          "- 240.0", style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.0
                    ),
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5.0
                    ),
                    child: Row(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.orange.withOpacity(0.1),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "DJ",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 25.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Load Activity",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Request Money",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "350.0",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ClickPerMonth {
  final String month;
  final int click;
  final charts.Color color;

  ClickPerMonth(this.month, this.click, Color color) :
  this.color = charts.Color(
    r: color.red, g: color.green, b: color.blue, a: color.alpha
  );


}