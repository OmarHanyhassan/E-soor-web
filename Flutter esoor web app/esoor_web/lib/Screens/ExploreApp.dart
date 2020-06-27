import 'package:flutter/material.dart';
import 'package:EsoorWeb/widgets/navbar.dart';

class ExploreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NavBar()
          ]
        ),
      ),
    );
  }
}