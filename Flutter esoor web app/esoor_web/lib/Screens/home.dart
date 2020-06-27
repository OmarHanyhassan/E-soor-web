
import 'package:flutter/material.dart';
import 'package:EsoorWeb/widgets/NavBar.dart'; 
import 'package:EsoorWeb/widgets/Footer.dart'; 
//import 'package:EsoorWeb/widgets/SocialMediaBar.dart'; 
import 'package:EsoorWeb/utils/ResponsiveLayout.dart'; 
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      gradient:
      LinearGradient(colors: [Color(0xFFF8FBFF), Color(0xFFFCFDFD)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              NavBar(), 
              Body(),
              Footer(),
              SizedBox(height:100)
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .5,
            child: Padding(
              padding: EdgeInsets.only(right:40, top: 40),
              child: Image.asset("assets/bookstore.jpg", scale: 1),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .5,
            child: Padding(
              padding: EdgeInsets.only(left: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Hello!",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF8591B0))),
                  RichText(
                    text: TextSpan(
                      text: "Welcome To ",
                      style:
                        TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
                    children: [
                      TextSpan(
                        text: "E-soor",
                        style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87))
                      ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 20),
                    child: Text("LET’S EXPLORE THE WORLD"),
                  ),
                  //SocialMediaBar()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello!",
              style: TextStyle(
                fontSize: 40,
                color: Color(0xFF8591B0),
                fontWeight: FontWeight.bold,
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Welcome To ',
                style: TextStyle(fontSize: 40, color: Color(0xFF8591B0)),
                children: <TextSpan>[
                  TextSpan(
                      text: 'E-soor',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black87)
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text("LET’S EXPLORE THE WORLD"),
            ),

            SizedBox(
              height: 30,
            ),

            //SocialMediaBar(),

            Center(
              child: Image.asset(
               "assets/bookstore.jpg",
                scale: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}