import 'package:EsoorWeb/Screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'Flutter Landing Page',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
