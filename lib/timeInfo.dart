import 'package:flutter/cupertino.dart';

class TimeInfo extends ChangeNotifier
{
  int time=60;

  int getTime()=>time;
     updateTime()
    {
      if(time>0) {
        time--;
      }
      notifyListeners();
    }
  }

