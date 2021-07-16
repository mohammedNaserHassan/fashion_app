import 'package:flutter/material.dart';

class AppRouter{
  AppRouter._();
  static AppRouter appRouter = AppRouter._();
   GlobalKey<NavigatorState> globalKey =GlobalKey<NavigatorState>();
  
  pushfunction(Widget widget){
    globalKey.currentState.push(
      MaterialPageRoute(builder: (x)=> widget)
    );
  }
  pushreplacmentfunction(Widget widget){
    globalKey.currentState.pushReplacement(
        MaterialPageRoute(builder: (x)=> widget)
    );
  }

  pushnamedfunction(String x){
    globalKey.currentState.pushNamed(x);
  }
}