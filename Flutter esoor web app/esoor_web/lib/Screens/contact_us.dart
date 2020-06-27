import 'package:EsoorWeb/widgets/navbar.dart';
import 'package:flutter/material.dart';


class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
         child: SingleChildScrollView(
            child: Column(
              children: [
                NavBar()
            ]
          ),
        ),
      )
    );
  }
}