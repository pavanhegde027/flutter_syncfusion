import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../data_models/models.dart';

class MonthsScreen extends StatefulWidget {
  const MonthsScreen({Key? key}) : super(key: key);

  @override
  State<MonthsScreen> createState() => _MonthsScreenState();
}

class _MonthsScreenState extends State<MonthsScreen> {

  late List<Investment> _chartData;
  late TooltipBehavior _tooltipBehavior;
  late TrackballBehavior trackballBehavior;
  late SelectionBehavior selectionBehavior;
  late List<Assets> assetChartData;


  //Hardcoded data for the StackedAreaSeries graph
  List<Assets> getAssetChartData () {

    final List<Assets> data = [

      Assets('2023-08-01', -2000000, 0),
      Assets('2023-09-01', -1031000, 0),
      Assets('2023-10-01', -999888, 10706),
      Assets('2023-11-01', -979092, 0),
      Assets('2023-12-01', -976599, 412341),
      Assets('2024-01-01', -157147, 407549),
      Assets('2024-02-01', -156739, 411145),
      Assets('2024-03-01', -114694, 414773),
      Assets('2024-04-01', -72178, 418432),
      Assets('2024-05-01', -29030, 452659),
       Assets('2024-06-01', -2883, 532790),
      Assets('2024-07-01', 0, 0),
      Assets('2024-08-01', 0, 0),
    ];

        return data;
  }

  //Hardcoded data for the Stacked Column graph
  List<Investment> getChartData() {
    final List<Investment> chartData = [

      Investment('Aggressive Hybrid Funds', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
      Investment('Large Cap Funds', 0, 0, 10706, 0, 0, 0, 0, 0, 0, 0, 0, 0),
      Investment('Arbitrage Funds', 0, 0, -10706, 0, 0, 0, 0, 0, 0, 0, 0, 0),
      Investment('Mid Cap Funds', 0, 0, 0, 0, 40398, 60598, 8356, 100996, 20199, 80767, 60789, 40398),
      Investment('Money Market Funds', 0, 0, 0, 0, -1, 87, -56, 0, 66, 0, 88, 0),
      Investment('Contingency funds', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
      Investment('Flexi Cap Funds', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
      Investment('Liquid Funds', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
      Investment('Precious Metals', 0, 0, 3155, 6043, 8888, 937, 3429, 1737, 0, 0, 0, 0),
      Investment('International Equity Funds',0, 0, 3155, 6043, 8888, 937, 3429, 1737, 0, 0, 0, 0),
      Investment('Small Cap Funds',0, 0, 3155, 6043, 8888, 937, 3429, 1737, 0, 0, 0, 0),
      Investment('Digital Sectoral Funds', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),


      // ExpenseData('Food', 55, 40, 45, 48),
      // ExpenseData('Transport', 33, -45, 54, 28),
      // ExpenseData('Medical', -43, 23, 20, 34),
      // ExpenseData('Clothes', 32, 54, 23, 54),
      // ExpenseData('Books', 56, 18, 43, 55),
      // ExpenseData('Others', 23, 54, 33, 56),
    ];
    return chartData;
  }


  @override
  void initState() {
    _chartData = getChartData();
    assetChartData = getAssetChartData();

    _tooltipBehavior = TooltipBehavior(enable: true);
    trackballBehavior = TrackballBehavior(
      // Enables the trackball
        enable: true,
        tooltipSettings: InteractiveTooltip(
            enable: true,
            color: Colors.red
        )
    );
    selectionBehavior = SelectionBehavior(enable: true,);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,

        centerTitle: true,
        title: Text(
          'Next 12 Months',textScaleFactor: 1,
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

                Text(
                    'Upcoming Expenses',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(
                        color: Colors.black)),

                SizedBox(height: 12,),

                Table(
                  border: TableBorder.all(),
                  children: [

                    buildRow(['Name', 'Amount'], isHeader: true),
                    buildRow(["DOMESTIC VACATION",  'Rs.50.0K']),
                    buildRow(['Diwali breaks',  'Rs.40.0K']),
                    buildRow(['Total',  'Rs.90.0K']),

                  ],
                ),

                SizedBox(height: 24,),

                Text(
                    'Expected Expenses',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(
                        color: Colors.black)),

                SizedBox(height: 12,),

                Table(
                  border: TableBorder.all(),
                  children: [

                    buildRow(['Name', 'Amount'], isHeader: true),
                    buildRow(["MIRT INCOME",  'Rs.5.3L']),
                    buildRow(['Total',  'Rs.5.3L']),

                  ],
                ),

                SizedBox(height: 16,),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Assets & Liabilities",
                    textScaleFactor: 1,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),),
                ),

                //TODO : Graph

                Container(
                  height: 500,
                  child:

                  SfCartesianChart(
                    title: ChartTitle(
                        text: 'Assets & Liabilities'),
                    legend: Legend(isVisible: true),

                    //tooltipBehavior: _tooltipBehavior,
                    trackballBehavior: trackballBehavior,

                    series: <ChartSeries>[


                      StackedAreaSeries<Assets, String>(
                        dataSource: assetChartData,
                        xValueMapper: (Assets exp, _) => exp.category,
                        yValueMapper: (Assets exp, _) => exp.loanPrincipal,
                        selectionBehavior: selectionBehavior,
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
                    'Assumptions for the plan',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(
                        color: Colors.black)),
                SizedBox(height: 4,),

                Text(
                    '1. This graph shows how your assets and liabilities are projected over the next 12 months.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 4,),

                Text(
                    '2. Your loan principal increases on years when loans are planned to help fulfill your goals.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 16,),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Key Insights",
                    textScaleFactor: 1,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),),
                ),

                SizedBox(height: 16,),

                Table(
                  border: TableBorder.all(),
                  children: [

                    buildRow(['insight', 'value'], isHeader: true),
                    buildRow(["Total assets by July 2024",  'Rs.5.3L']),
                    buildRow(['Total liabilities by July 2024',  'Rs.3.0K']),
                    buildRow(['Net Worth by July 2024',  'Rs.5.3L']),
                    buildRow(['Total planned loans taken',  '0']),
                    buildRow(['Total loan payments made',  'Rs.20.8L']),

                  ],
                ),

                SizedBox(height: 16,),

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

                //TODO : Graph

                Container(
                  width: double.infinity,
                  height: 500,
                  child: SfCartesianChart(
                    title: ChartTitle(
                        text: 'Investments & Withdrawals in asset classes'),
                    legend: Legend(isVisible: true,),

                    tooltipBehavior: _tooltipBehavior,
                    // onDataLabelTapped: (DataLabelTapDetails args) {
                    //   print(args.seriesIndex);
                    // },

                    series: <ChartSeries>[
                      StackedColumnSeries<Investment, String>(
                        dataSource: _chartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.aggressiveFunds,
                        selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'aggressiveFunds',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: _chartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.largeFunds,
                        selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'largeFunds',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: _chartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.arbitrage,
                        selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'arbitrage',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: _chartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.midCap,
                        selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'midCap',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: _chartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.marketFunds,
                        selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'marketFunds',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: _chartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.contingency,
                        selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'contingency',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: _chartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.flexi,
                        selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'flexi',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: _chartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.liquid,
                        selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'liquid',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: _chartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.preciousMetals,
                        selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'preciousMetals',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: _chartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.equity,
                        selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'equity',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: _chartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.smallFunds,
                        selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'smallFunds',

                      ),

                      StackedColumnSeries<Investment, String>(
                        dataSource: _chartData,
                        xValueMapper: (Investment exp, _) => exp.category,
                        yValueMapper: (Investment exp, _) => exp.digitalFunds,
                        selectionBehavior: selectionBehavior,
                        //dataLabelSettings: DataLabelSettings(isVisible: true),

                        name: 'digitalFunds',

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
                    '1. This shows your total investments and withdrawal over next 12 months along with the breakdown of asset classes in which those investments and withdrawals have happened.',
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
                  "Top Asset classes for investments over next 12 months",
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
                    buildRow(["Flexi Cap Funds",  'Rs.1.3L', 'Rs.174.83256999998412']),
                    buildRow(["International Equity Funds",  'Rs.1L', 'Rs.931.2962000000116']),
                    buildRow(["Mid Cap Funds",  'Rs.76K', 'Rs.2.5609849999746075']),

                  ],
                ),

                SizedBox(height: 16,),

                SizedBox(height: 16,),

                Text(
                  "Top Asset classes for withdrawals over next 12 months",
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
                    buildRow(["Contingency funds",  'Rs.19.0K', 'Rs.19.0K']),
                    buildRow(["International Equity Funds",  'Rs.1L', 'Rs.931.2962000000116']),
                    buildRow(["Mid Cap Funds",  'Rs.76K', 'Rs.289.560984999974']),

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

}
