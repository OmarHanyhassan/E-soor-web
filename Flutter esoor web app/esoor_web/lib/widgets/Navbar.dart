import 'package:EsoorWeb/Screens/ContactUs.dart';
import 'package:EsoorWeb/Screens/ExploreApp.dart';
import 'package:EsoorWeb/main.dart';
import 'package:flutter/material.dart';
import '../utils/ResponsiveLayout.dart';

class NavBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                  child: Image.asset("assets/logo.jpg")
              ),

              SizedBox(
                width: 15,
              ),

              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "E-soor", 
                  style: TextStyle(
                    fontSize: 35
                  )
                ),
              )
            ],
          ),
          
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          return Home();
                        }
                      )
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left:30),
                    child: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                  )
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context){
                          return ContactUs();
                        }
                      )
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left:30),                   
                    child: Text(
                      "Contact Us",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),                      
                    ),
                  ),
                ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    margin: EdgeInsets.only(left: 40),
                    child: RaisedButton(
                      elevation: 10,
                      color: Colors.grey[600],
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context){
                          return ExploreApp();
                        }
                      )
                    );
                  },
                      child:  Text("Explore How The App Works",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                ],
              )
          else
           IconButton(icon: Icon(Icons.menu), onPressed: (){})
        ],
      ),
    );
  }
}