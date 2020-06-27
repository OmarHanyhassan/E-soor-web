/*import 'package:flutter/material.dart';
import '../utils/ResponsiveLayout.dart';


class SocialMediaBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.0,
        right: ResponsiveLayout.isSmallScreen(context) ? 4 : 74,
        top: 10,
        bottom: 40,
      ),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow:[
            BoxShadow(
              color: Colors.black12, offset: Offset(0, 8), blurRadius: 8)
            ]
          ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
             FlatButton(
               onPressed: (){

               },
               child: Text("twitter")
             ),
             FlatButton(
               onPressed: (){

               },
               child: Text("instgram")
             ),
             FlatButton(
               onPressed: (){

               },
               child: Text("facebook")
             )
              //Expanded(
                //flex: 2,
                //child: SendBtn(),
              //)
            ],
          ),
        ),
      ),
    );
  }
}*/