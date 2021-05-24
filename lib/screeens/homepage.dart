

import 'package:flutter/material.dart';

import 'navigation.dart';

void main(){

  runApp(MaterialApp(
    title: "Navigasyon Sayfası",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    home: Navigation(),

  ));
}
