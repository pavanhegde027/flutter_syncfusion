
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../data_models/models.dart';

class YearsScreen extends StatefulWidget {
  const YearsScreen({Key? key}) : super(key: key);

  @override
  State<YearsScreen> createState() => _YearsScreenState();
}

class _YearsScreenState extends State<YearsScreen> {

  late List<Repayments> _chartData;
  late List<Repayments> lineChartData;
  late List<Investment> barchartData;
  late TooltipBehavior _tooltipBehavior;
  late TooltipBehavior toolBehaviour;
  late List<Assets> assetChartData;
  late TrackballBehavior trackballBehavior;
  late TrackballBehavior trackBehavior;
  late TrackballBehavior trackBall;


  //Function to create a table
  TableRow buildRow(List<String> rowsColumns, {bool isHeader = false}) => TableRow(
      children: rowsColumns.map((e)  {

        final style = GoogleFonts.poppins(textStyle:  TextStyle(
            color: isHeader ? Colors.blue : Colors.black,

            fontSize: 12,
            fontWeight: FontWeight.w500));

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(alignment: Alignment.centerLeft,child: Text(e,style: style,)),
        ); }).toList()
  );

  @override
  void initState() {
    _chartData = getChartData();
    assetChartData = getAssetChartData();
    barchartData = getBarChartData();
    lineChartData = lineData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    toolBehaviour = TooltipBehavior(enable: true);
    trackBall = trackballBehavior = TrackballBehavior(
      // Enables the trackball
        enable: true,
        tooltipSettings: InteractiveTooltip(
            enable: true,
            color: Colors.red
        )
    );
    trackballBehavior = TrackballBehavior(
      // Enables the trackball
        enable: true,
        tooltipSettings: InteractiveTooltip(
            enable: true,
            color: Colors.red
        )
    );

    trackBehavior = TrackballBehavior(
      // Enables the trackball
        enable: true,
        tooltipSettings: InteractiveTooltip(
            enable: true,
            color: Colors.red
        )
    );
    super.initState();
  }

  //Hardcoded data for the graphs
  List<Assets> getAssetChartData () {

    final List<Assets> data = [

      Assets('2023-08-01', -2000000, 0),
      Assets('2024-09-01', -29030, 0),
      Assets('2025-10-01', -999888, 10706),
      Assets('2026-11-01', -979092, 0),
      Assets('2027-12-01', -976599, 412341),
      Assets('2028-01-01', -157147, 407549),
      Assets('2029-02-01', -156739, 411145),
      Assets('2030-03-01', -17135869, 914773),
      Assets('2031-04-01', -16435869, 818432),
      Assets('2032-05-01', -15735869, 752659),
      Assets('2033-06-01', -14135869, 632790),

    ];

    return data;
  }

  List<Investment> getBarChartData() {
    final List<Investment> chartData = [

      Investment('Aggressive Hybrid Funds', 23745, 53747,67324, 45263, 0, 0, 0, 0, 0, 0, 0, 0),
      Investment('Large Cap Funds', 23745, 53747,67324, 45263, 0, 0, 0, 0, 0, 0, 0, 0),
      Investment('Arbitrage Funds', 33745, 43747,57324, 65263, 0, 0, 0, 0, 0, 0, 0, 0),
      Investment('Mid Cap Funds',53745, 63747,77324, 85263, 0, 0, 0, 0, 0, 0, 0, 0),
      Investment('Money Market Funds', -518692, -313903, -126687, 822575, -234567, -338578, -123687, 0, -313903, 0, 88, 0),
      Investment('Contingency funds', - 23745, -53747,-67324, -45263, 0, 0, 0, 0, 0, 0, 0, 0),
      Investment('Flexi Cap Funds', -23745, -53747,-67324, -45263, 0, 0, 0, 0, 0, 0, 0, 0),
      Investment('Liquid Funds', -23745, -53747,-67324, -45263, 0, 0, 0, 0, 0, 0, 0, 0),
      Investment('Precious Metals', 0, 0, -3155,- 6043,- 8888, -937, -3429, -1737, 0, 0, 0, 0),
      Investment('International Equity Funds',0, 0, -3155, -6043, -8888, -937, -3429, -1737, 0, 0, 0, 0),
      Investment('Small Cap Funds',0, 0,- 3155, -6043,- 8888,- 937, -3429, -1737, 0, 0, 0, 0),
      Investment('Digital Sectoral Funds', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),

    ];
    return chartData;
  }

  List<Repayments> getChartData() {
    final List<Repayments> chartData = [

     Repayments('2023', 1917685, 423046),
     Repayments('2024', 164005, 312170),
     Repayments('2025', 0, 547081),
     Repayments('2026', 0, 632484),
     Repayments('2027', 0, 730615),
     Repayments('2028', 0, 976541),
     Repayments('2029', 1665625, 100),
     Repayments('2030', 1665625, 100),
     Repayments('2031', 1665625, 100),
     Repayments('2032', 0, 4472),

    ];
    return chartData;
  }

  List<Repayments> lineData() {
    final List<Repayments> chartData = [

      Repayments('2023', 220000, 1957685),
      Repayments('2024', 561000, 257205),
      Repayments('2025', 644340, 99156),
      Repayments('2026', 738001, 105513),
      Repayments('2027', 842917, 112301),
      Repayments('2028', 960051, 19263772),
      Repayments('2029', 1090392, 1792914),
      Repayments('2030', 1234941, 1801183),
      Repayments('2031', 1394706, 1810017),
      Repayments('2032', 1763830, 1829549),

    ];
    return chartData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,

        centerTitle: true,
        title: Text(
          'Next 10 Years',textScaleFactor: 1,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(color: Colors.white, letterSpacing: 0),
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
      ),

      body: SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 15,),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Investments & withdrawals",
                    textScaleFactor: 1,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),),
                ),

                SizedBox(height: 16,),

                Container(
                  width: double.infinity,
                  height: 500,
                  child: SfCartesianChart(
                    title: ChartTitle(
                        text: 'Investments & Withdrawals in asset classes'),
                    legend: Legend(isVisible: true,),

                    tooltipBehavior: toolBehaviour,
                    // onDataLabelTapped: (DataLabelTapDetails args) {
                    //   print(args.seriesIndex);
                    // },

                    series: <ChartSeries>[
                      StackedColumnSeries<Investment, String>(
                        dataSource: barchartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.aggressiveFunds,
                        //selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'aggressiveFunds',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: barchartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.largeFunds,
                       // selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'largeFunds',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: barchartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.arbitrage,
                        //selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'arbitrage',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: barchartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.midCap,
                        //selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'midCap',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: barchartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.marketFunds,
                        //selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'marketFunds',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: barchartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.contingency,
                        //selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'contingency',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: barchartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.flexi,
                        //selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'flexi',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: barchartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.liquid,
                        //selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'liquid',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: barchartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.preciousMetals,
                        //selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'preciousMetals',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: barchartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.equity,
                        //selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'equity',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: barchartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.smallFunds,
                        //selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'smallFunds',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: barchartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.digitalFunds,
                       // selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'digitalFunds',

                      ),
                    ],
                    primaryXAxis: CategoryAxis(),
                  ),
                ),

                SizedBox(height: 24,),

                //TODO: Graph

                Text(
                    'How do I read this graph?',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(
                        color: Colors.black)),
                SizedBox(height: 4,),

                Text(
                    '1. This shows your total investments and withdrawal over next 10 years along with the breakdown of asset classes in which those investments and withdrawals are made.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 4,),

                Text(
                    '2. For every year column bar, asset classes above the X-axis show an investment into the asset class while the portion below represents a withdrawal.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 4,),

                Text(
                    '3. This figure is the overall net investment/withdrawal for the year, the monthly allocation may vary',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 16,),

                Text(
                  "Top Asset classes for investments over next 10 years",
                  textScaleFactor: 1,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),),

                SizedBox(height: 16,),

                Table(
                  border: TableBorder.all(),
                  children: [

                    buildRow(['Name', 'Investments', 'Withdrawals'], isHeader: true),
                    buildRow(["Contingency funds",  'Rs.9.3L', 'Rs.1.9L']),
                    buildRow(["Aggressive Hybrid Funds",  'Rs.5.6L', 'Rs.6.5L']),
                    buildRow(["Flexi Cap Funds",  'Rs.5.5L', 'Rs.8.4L']),

                  ],
                ),

                SizedBox(height: 16,),

                Text(
                  "Top Asset classes for withdrawals over next 10 years",
                  textScaleFactor: 1,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),),

                SizedBox(height: 16,),

                Table(
                  border: TableBorder.all(),
                  children: [

                    buildRow(['Name', 'Investments', 'Withdrawals'], isHeader: true),
                    buildRow(["Flexi Cap Funds",  'Rs.5.5L', 'Rs.8.4L']),
                    buildRow(["Aggressive Hybrid Funds",  'Rs.5.6L', 'Rs.6.5L']),
                    buildRow(["Mid Cap Funds",  'Rs.4.1L', 'Rs.6L']),

                  ],
                ),

                SizedBox(height: 16,),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Investments & Loan Repayments",
                    textScaleFactor: 1,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),),
                ),

                SizedBox(height: 16,),

                //TODO: Graph

                Container(
                  height: 500,

                  child:  SfCartesianChart(
                    title: ChartTitle(
                        text: ''),
                    legend: Legend(isVisible: true),

                    tooltipBehavior: _tooltipBehavior,
                    trackballBehavior: trackBehavior,

                    series: <ChartSeries>[


                      StackedLineSeries<Repayments, String>(
                          dataSource: _chartData,
                          xValueMapper: (Repayments exp, _) => exp.category,
                          yValueMapper: (Repayments exp, _) => exp.loan,
                          //selectionBehavior: selectionBehavior,
                          //dataLabelSettings: DataLabelSettings(isVisible: true),

                          name: 'Loan Principal',
                          //dataLabelSettings: DataLabelSettings(isVisible: true),

                          color: Colors.blueAccent,
                          markerSettings: MarkerSettings(
                            isVisible: true,
                          )


                      ),

                      StackedLineSeries<Repayments, String>(
                          dataSource: _chartData,
                          color: Colors.redAccent,
                          xValueMapper: (Repayments exp, _) => exp.category,
                          yValueMapper: (Repayments exp, _) => exp.investment,
                          name: 'Asset Class Balance',
                          // dataLabelSettings: DataLabelSettings(isVisible: true),
                          markerSettings: MarkerSettings(
                            isVisible: true,
                          )
                      ),

                    ],
                    primaryXAxis: CategoryAxis(),
                  ),
                ),

                SizedBox(height: 24,),

                Text(
                    'How do I read this graph?',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(
                        color: Colors.black)),
                SizedBox(height: 4,),

                Text(
                    '1. This shows your net annual investments and planned loan payments over the next 10 years',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 4,),

                Text(
                    '2. The loan payments will include your existing loans, and also any loan repayments that we have allocated as a part of your plan to be able to accomplish the goals for which you have enabled loan planning.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 16,),

                Text(
                  "Key Insights",
                  textScaleFactor: 1,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),),

                SizedBox(height: 16,),

                Table(
                  border: TableBorder.all(),
                  children: [

                    buildRow(['insight', 'value'], isHeader: true),
                    buildRow(["Total planned investments",  'Rs.37.6L']),
                    buildRow(["Total planned withdrawals",  'Rs.42.1L', ]),
                    buildRow(["Total loan payments",  'Rs.1Cr']),

                  ],
                ),

                SizedBox(height: 16,),

                Text(
                  "What loans are planned for me?",
                  textScaleFactor: 1,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),),

                SizedBox(height: 16,),

                Table(
                  border: TableBorder.all(),
                  children: [

                    buildRow(['Name', 'Month', 'Amount'], isHeader: true),
                    buildRow(["HOME",  '2028-Dec', 'Rs.1.7Cr']),

                  ],
                ),

                SizedBox(height: 16,),

                //TODO : Graph

                Container(
                  height: 500,
                  child:

                  SfCartesianChart(
                    title: ChartTitle(
                        text: 'Networth Analysis'),
                    legend: Legend(isVisible: true),

                    //tooltipBehavior: _tooltipBehavior,
                    trackballBehavior: trackBall,

                    series: <ChartSeries>[


                      StackedAreaSeries<Assets, String>(
                          dataSource: assetChartData,
                          xValueMapper: (Assets exp, _) => exp.category,
                          yValueMapper: (Assets exp, _) => exp.loanPrincipal,
                         // selectionBehavior: selectionBehavior,
                          //dataLabelSettings: DataLabelSettings(isVisible: true),

                          name: 'Loan Principal',
                          //dataLabelSettings: DataLabelSettings(isVisible: true),

                          color: Colors.red,
                          markerSettings: MarkerSettings(
                            isVisible: true,
                          )


                      ),

                      StackedAreaSeries<Assets, String>(
                          dataSource: assetChartData,
                          color: Colors.blue,
                          xValueMapper: (Assets exp, _) => exp.category,
                          yValueMapper: (Assets exp, _) => exp.assetClassBalance,
                          name: 'Asset Class Balance',
                          // dataLabelSettings: DataLabelSettings(isVisible: true),
                          markerSettings: MarkerSettings(
                            isVisible: true,
                          )
                      ),

                    ],
                    primaryXAxis: CategoryAxis(),
                  ),
                ),

                SizedBox(height: 24,),

                Text(
                    'How do I read this graph?',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(
                        color: Colors.black)),
                SizedBox(height: 4,),

                Text(
                    '1. This graph shows how your assets and liabilities are projected over the next 10 years.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 4,),

                Text(
                    '2. The liabilities show your reducing loan principal amount as a negative value (below the x-axis) while your net assets are positive (above the x axis).',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 16,),

                Text(
                    '3. Your loan principal increases on years when loans are planned to help fulfill your goals.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 16,),

                Text(
                  "Key Insights",
                  textScaleFactor: 1,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),),

                SizedBox(height: 16,),

                Table(
                  border: TableBorder.all(),
                  children: [

                    buildRow(['insight', 'value'], isHeader: true),
                    buildRow(["Total assets by August 2033",  'Rs.10.0L']),
                    buildRow(["Total liabilities by August 2033",  'Rs.1.5 Cr', ]),
                    buildRow(["Net Worth by August 2033",  'Rs.1.4Cr']),
                    buildRow(["Total planned loans taken",  'Rs.1.7Cr']),
                    buildRow(["Total loan payments made",  'Rs.1Cr']),

                  ],
                ),

                SizedBox(height: 16,),

                Text(
                  "Breakdown of assets by August 2033",
                  textScaleFactor: 1,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),),

                SizedBox(height: 16,),

                Table(
                  border: TableBorder.all(),
                  children: [

                    buildRow(['Name', 'Amount'], isHeader: true),
                    buildRow(["Aggressive Hybrid Funds",  'Rs.6.0K']),
                    buildRow(["Arbitrage Funds",  'Rs.2.0K', ]),
                    buildRow(["Contingency funds",  'Rs.8.7L']),
                    buildRow(["Digital Sectoral Funds",  'Rs.11.0K']),
                    buildRow(["Flexi Cap Funds",  'Rs.30.0K']),
                    buildRow(["International Equity Funds",  'Rs.22.0K']),
                    buildRow(["Large Cap Funds",  'Rs.14.0K']),
                    buildRow(["Mid  Cap Funds",  'Rs.19.0K']),
                    buildRow(["Precious Metals",  'Rs.6.0K']),
                    buildRow(["Small Cap Funds",  'Rs.17.0K']),

                  ],
                ),

                SizedBox(height: 16,),

                Text(
                  "Spends planned in months with large withdrawals",
                  textScaleFactor: 1,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),),

                SizedBox(height: 16,),

                Table(
                  border: TableBorder.all(),
                  children: [

                    buildRow(['Month', 'Name', 'Amount', 'Total withdrawal in month'], isHeader: true),
                    buildRow(['2028-Dec', 'HOME', 'Rs.1.9 C', 'Rs.18.3L']),


                  ],

                ),

                SizedBox(height: 16,),

                //TODO: Graph

                Container(
                  height: 500,

                  child:  SfCartesianChart(
                    title: ChartTitle(
                        text: 'Incomes & Spends'),
                    legend: Legend(isVisible: true),

                    tooltipBehavior: _tooltipBehavior,
                    trackballBehavior: trackballBehavior,

                    series: <ChartSeries>[


                      StackedLineSeries<Repayments, String>(
                          dataSource: lineChartData,
                          xValueMapper: (Repayments exp, _) => exp.category,
                          yValueMapper: (Repayments exp, _) => exp.loan,
                          //selectionBehavior: selectionBehavior,
                          //dataLabelSettings: DataLabelSettings(isVisible: true),

                          name: 'Inflow',
                          //dataLabelSettings: DataLabelSettings(isVisible: true),

                          color: Colors.blueAccent,
                          markerSettings: MarkerSettings(
                            isVisible: true,
                          )


                      ),

                      StackedLineSeries<Repayments, String>(
                          dataSource: lineChartData,
                          color: Colors.redAccent,
                          xValueMapper: (Repayments exp, _) => exp.category,
                          yValueMapper: (Repayments exp, _) => exp.investment,
                          name: 'Outflow',
                          // dataLabelSettings: DataLabelSettings(isVisible: true),
                          markerSettings: MarkerSettings(
                            isVisible: true,
                          )
                      ),

                    ],
                    primaryXAxis: CategoryAxis(),
                  ),
                ),

                SizedBox(height: 24,),

                Text(
                  "Incomes & Spends",
                  textScaleFactor: 1,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),),

                SizedBox(height: 16,),


                Text(
                    'How do I read this graph?',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(
                        color: Colors.black)),
                SizedBox(height: 4,),

                Text(
                    '1. The outflows include your monthly spends, large expenditures you may have planned and loan payments (for existing loans or loans planned for future goals).',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 4,),

                Text(
                    '2. The inflow is your total annual income from all sources (not including withdrawals from existing investments) for that year.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 4,),

                Text(
                    '3. The years where the outflows are higher than the inflows are years where you would withdraw from existing investments or take a loan to fulfill goals, and the subsequent loan payments are added as spends in the coming years.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 4,),

                Text(
                    '4. This does not include the investments you would need to do towards rebalancing your portfolio to match our recommendation.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 16,),

                Text(
                  "Key Insights",
                  textScaleFactor: 1,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),),

                SizedBox(height: 16,),

                Table(
                  border: TableBorder.all(),
                  children: [

                    buildRow(['insight', 'value'], isHeader: true),
                    buildRow(["Total inflow expected over the next 10 years",  'Rs.1.1 Cr']),
                    buildRow(["Total outflow expected over the next 10 years",  'Rs.3.1 Cr', ]),
                    buildRow(["# of years with outflow > inflow",  '7']),
                    buildRow(["Total inflow expected in the last years",  'Rs.17.6L']),


                  ],
                ),

                SizedBox(height: 16,),


                Text(
                  "What are my major outflows?",
                  textScaleFactor: 1,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),),

                SizedBox(height: 16,),

                Table(
                  border: TableBorder.all(),
                  children: [

                    buildRow(['Name', 'Month', 'Amount'], isHeader: true),
                    buildRow(["HOME",  '2028-Dec', 'Rs.1.9 Cr']),

                  ],
                ),

                SizedBox(height: 16,),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Disclaimers",
                    textScaleFactor: 1,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),),
                ),

                SizedBox(height: 16,),

                Text(
                  "Assumed Spend Inflations",
                  textScaleFactor: 1,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),),

                SizedBox(height: 16,),

                Table(
                  border: TableBorder.all(),
                  children: [

                    buildRow(['Name', 'Inflations'], isHeader: true),
                    buildRow(["Diwali breaks",  'Growing at 8.0% every year']),
                    buildRow(["DOMESTIC VACATION",  'Growing at 5.0% every year']),
                    buildRow(["HOME",  'Growing at 5.0% every year']),
                    buildRow(["MONTHLY SPEND AFTER RETIREMENT",  'Growing at 6.0% every year']),

                  ],
                ),

                SizedBox(height: 16,),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
