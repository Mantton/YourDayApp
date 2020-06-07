import 'package:flutter/material.dart';
import 'package:yourday/Variables.dart' as recurr;

class YourDay extends StatefulWidget {
  @override
  _YourDayState createState() => _YourDayState();
}

class _YourDayState extends State<YourDay> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blueGrey, Colors.red])),
        padding: EdgeInsets.fromLTRB(10, 10, 5, 2),
        child: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Thursday, 27 September 2020',
                style: recurr.primaryTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 170,
                child: PageView(
                  children: <Widget>[
                    Card(
                      color: Colors.blueGrey[900],
                      child: Container(
                        child: Center(
                          child: Text('Weather', style: recurr.primaryTextStyle,),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blueGrey[900],
                      child: Container(
                        child: Center(
                          child: Text('Traffic on route', style: recurr.primaryTextStyle,),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blueGrey[900],
                      child: Container(
                        child: Center(
                          child: Text('Top News Stories', style: recurr.primaryTextStyle,),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              Text(
                'Schedule',
                style: recurr.secondaryTextStyle,
              ),
              //TODO CREATE CALENDAR STYLE STUFF HERE

              Text(
                'Reminders',
                style: recurr.secondaryTextStyle,
              ),
              //TODO LISTVIEW REMINDERS

              Text(
                'Daily Goals',
                style: recurr.secondaryTextStyle,
              ),
              // TODO LISTVIEW DAILY GOALS
            ],
          ),
        ),
      ),
    );
  }
}
