import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import'timeInfo.dart';
import 'home.dart';
void main()
{
  runApp(MaterialApp(
    home:ChangeNotifierProvider(
      create: (context)=>TimeInfo(),
        child: Home())
  ));
}