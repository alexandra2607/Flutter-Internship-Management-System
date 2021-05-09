import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ViewJobStud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: mediaQuery.size.height/3,
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
                    Colors.white24,
                    Colors.orange[200]
                  ]
                )
              ),
              child: Transform.translate(
                offset: Offset(30, -30),
                child: Image.asset('assets/images/microsoft.png',),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: MediaQuery.of(context).size.height / 1.4,
            child: Container(
              padding: const EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Company', 
                    style: TextStyle(color: Color.fromRGBO(97, 90, 90, .54), fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "Monsterrat Regular"),),
                    SizedBox(height: 10,),
                    Text("Job title", 
                    style: TextStyle(color: Color.fromRGBO(97, 90, 90, 1), fontSize: 23, fontWeight: FontWeight.bold, fontFamily: "Monsterrat Medium"),),
                    SizedBox(height: 20,),                    
                   Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", 
                   style: TextStyle(color: Color.fromRGBO(51, 51, 51, 0.54), height: 1.4, fontSize: 18, fontFamily: "Monsterrat Regular"),),
                    SizedBox(height: 30,), 
                    SizedBox(height: 50,),
                   
                    SizedBox(height: 50,),
                    Container(
                      height: 60,
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[300],
                            blurRadius: 10,
                            offset: Offset(0, 10)
                          )
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.green[200],
                            Colors.green[600]
                          ]
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Center(child: Text('Apply', style: TextStyle(color: Colors.white, fontSize: 25),)),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                  ],
                )
              )
            )
          ),
        ],
      ),
    );
  }
}