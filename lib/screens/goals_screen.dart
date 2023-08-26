import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({Key? key}) : super(key: key);

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,

        centerTitle: true,
        title: Text(
          'Goals',textScaleFactor: 1,
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

                Table(
                  border: TableBorder.all(),
                  children: [
                    
                    buildRow(['Name', 'How often', 'when-when', 'Amount'], isHeader: true),
                    buildRow(['Diwali breaks', 'Every Year', 'From Nov 2023 to Nov 2070', 'Rs.40.0K']),
                    buildRow(['DOMESTIC VACATION', 'Every Year', 'From Jan 2024 to Sep 2064', 'Rs.50.0K']),
                    buildRow(['HOME', 'Once', 'On Dec 2028', 'Rs.1.5Cr']),
                    buildRow(['MONTHLY SPEND AFTER RETIREMENT', 'Every Month', 'From Sep 2049 to Sep 2079', 'Rs.60.0K']),


                  ],
                ),

                SizedBox(height: 12,),

                Text(
                    'Assumptions for the plan',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(
                        color: Colors.black)),
                SizedBox(height: 4,),

                Text(
                    '  1. The plan covers your finances till 85 years of age',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 4,),

                Text(
                    '  2. All expected investment growth amounts are post-tax figures',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 4,),

                Text(
                    '  3. Your income tax slab rate is 30%',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 12,),

                Text(
                    'Assumed Incomes',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(
                        color: Colors.black)),

                SizedBox(height: 12,),

                Table(
                  border: TableBorder.all(),
                  children: [

                    buildRow(['Name', 'How often', 'when-when', 'Amount'], isHeader: true),
                    buildRow(["Employees' Provident Fund(Lumpsum)", 'Once', 'On Sep 2052', 'Rs.4.6Cr']),
                    buildRow(['MIRT INCOME', 'Every Month', 'From Aug 2023 to Sep 2049', 'Rs.44.0K']),

                  ],
                ),

                SizedBox(height: 12,),

                Text(
                    'Note : Changes to the assumed growth rates, tax rates and inflation figures will be automatically managed for you, and we will periodically revise these figures and re-plan with the revised figures',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),

                SizedBox(height: 12,),

                Text(
                    'Expected Incomes',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(
                        color: Colors.black)),

                SizedBox(height: 12,),

                Table(
                  border: TableBorder.all(),
                  children: [

                    buildRow(['Name', 'Amount'], isHeader: true),
                    buildRow(["MIRT INCOME", 'Rs.44k']),

                  ],
                ),

                SizedBox(height: 12,),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                      'Expected Incomes',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(
                          color: Colors.black)),
                ),

                SizedBox(height: 12,),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                      'You have not disclosed any existing portfolio\n The amount is immaterial for the plan',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(
                          color: Colors.black.withOpacity(0.7))),
                ),

                SizedBox(height: 12,),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                      'Desired Portfolio\n No assets to rebalance',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(
                          color: Colors.black.withOpacity(0.7))),
                ),

                SizedBox(height: 16,),

                Text(
                    'Why this portfolio?',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(
                        color: Colors.black)),
                SizedBox(height: 4,),

                Text(
                    '1. This suggested portfolio is designed after consideration of your cash inflows and outflows. We aim to minimize risk, maximise returns while maximising the probability of achieving your goals.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(
                        color: Colors.black.withOpacity(0.7))),



                SizedBox(height: 12,),

              ],
            ),
          ),
        ),
      ),
    );
  }

  //Function to create a table
  TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
    children: cells.map((e)  {

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
