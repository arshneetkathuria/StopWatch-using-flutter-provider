import 'dart:async';
import 'package:provider/provider.dart';
import'package:flutter/material.dart';
import 'timeInfo.dart';
class Home extends StatefulWidget
{
  _Home createState()=>_Home();
}
class _Home extends State<Home>
{

  @override
  void initState() {
    Timer.periodic(Duration(seconds:1),(t){
      var timeInfo=Provider.of<TimeInfo>(context,listen: false);
     timeInfo.updateTime();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print("==========from scratch===========");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("images/stopwatch.png"),
            SizedBox(height:10),
            Consumer<TimeInfo>(
              builder: (BuildContext context,data,child) {
                return Text(data.getTime()?.toString() ?? '', style: TextStyle(
                    color: Colors.black,
                    fontSize: 72,
                    fontWeight: FontWeight.bold));
              }
                )
          ],
        ),
      ),
    );
  }
}