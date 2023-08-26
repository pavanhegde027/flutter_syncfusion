import 'package:flutter/material.dart';
import 'package:flutter_graphs/screens/years_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'goals_screen.dart';
import 'months_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,

          centerTitle: true,
          title: Text(
            'Investor Profile',textScaleFactor: 1,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.white, letterSpacing: 0),
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
        ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 15,),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                      'Client Details',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(
                          color: Colors.black)),
                ),

                SizedBox(height: 20,),


                Container(
                  // height: screenHeight * 0.365,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(10),
                        color: Colors.black
                      //
                    ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                            'Client Name',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                color: Colors.white.withOpacity(0.6))),

                        SizedBox(height: 12,),

                        Text(
                            'Ashutosh Dwivedi (Internal)',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                color: Colors.white)),

                        SizedBox(height: 12,),

                        Text(
                            'Assessed Risk Tolerance',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                color: Colors.white.withOpacity(0.6))),

                        SizedBox(height: 12,),

                        Text(
                            'Aggressive',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                color: Colors.white)),

                        SizedBox(height: 12,),

                        Text(
                            'Year of birth',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                color: Colors.white.withOpacity(0.6))),

                        SizedBox(height: 12,),

                        Text(
                            '1994',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                color: Colors.white)),

                        SizedBox(height: 12,),

                      ],
                    ),
                  ),

                ),

                SizedBox(height: 12,),

                GestureDetector(

                  onTap: () {

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const GoalsScreen()));

                  },

                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Goals",
                      textScaleFactor: 1,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              fontSize: 22,
                              fontWeight: FontWeight.w500)),),
                  ),
                ),

                SizedBox(height: 16,),

                GestureDetector(

                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const MonthsScreen()));
                  },

                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Next 12 Months",
                      textScaleFactor: 1,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              fontSize: 22,
                              fontWeight: FontWeight.w500)),),
                  ),
                ),

                SizedBox(height: 16,),

                GestureDetector(

                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const YearsScreen()));
                  },

                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Next 10 Years",
                      textScaleFactor: 1,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              fontSize: 22,
                              fontWeight: FontWeight.w500)),),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
