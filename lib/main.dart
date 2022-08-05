import 'package:default_app_counter/app.dart';
import 'package:default_app_counter/auth_provider.dart';
import 'package:default_app_counter/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

void main() {
  runApp(
     MultiProvider(
      providers: [
        ChangeNotifierProvider(create:((_) => Counter())),
        ChangeNotifierProvider(create:((_) => AuthProvider()))
      ],
      child: MyApp())
     );
}

//went to pub.dev
//search provider.....go to installing 
//copy flutter pub add provider.....paste kwenhye terminal
//run flutter pub  get
//created counter_provider.dart
//provider  handles state of the application