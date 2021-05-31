import 'package:flutter/material.dart';
import 'package:internship_management_system/components/company/home/nav_bar_company.dart';
import 'package:internship_management_system/screens/LogIn.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hover_effect/hover_effect.dart';
import 'package:internship_management_system/screens/company/company_internship.dart';
import 'package:internship_management_system/signature/main_signature.dart';

class CompanyHome extends StatefulWidget {
  @override
  _CompanyHomeState createState() => _CompanyHomeState();
}

class _CompanyHomeState extends State<CompanyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange),
      drawer: NavigationBarCompany(),
      body: Stack(
        children: <Widget>[
          Container(
            height:  0.3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.orangeAccent[400],
	                 Colors.orange[200]
                ])
               ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 80,
                    margin: EdgeInsets.only(bottom: 40),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        
                        SizedBox(width: 14),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Microsoft',
                            style: TextStyle(
                              fontFamily: "Montserrat Medium",
                              color: Colors.orange,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            )),
                            Text('company',
                            style: TextStyle(
                              fontFamily: "Montserrat Regular",
                              color: Colors.orange,
                              fontSize: 20
                            ),),
                            
                          ],
                        ),
                      ],)
                  ),
                  Expanded(
                     child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      primary: false,
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 250,
                          child: HoverCard(
                            builder: (context, hovering) {
                              return Container(
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:  MainAxisAlignment.center,
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        'assets/images/internship.svg',
                                        height: 110,),
                                      Text('Add internship',
                                        style: TextStyle(
                                        fontFamily: "Monsterrat Regular",
                                        fontSize: 14,
                                        color: Colors.black87
                                        ),),
                                    ]
                                  ),
                                ),
                              );
                            },
                            depth: 10,
                            depthColor: Colors.grey[500],
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CompanyInternship()),),
                            shadow: BoxShadow(color: Colors.black54, blurRadius: 10, spreadRadius: -20, offset: Offset(0, 40)),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 250,
                          child: HoverCard(
                            builder: (context, hovering) {
                              return Container(
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:  MainAxisAlignment.center,
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        'assets/images/graduates.svg',
                                        height: 110,),
                                      Text('View candidats',
                                        style: TextStyle(
                                        fontFamily: "Monsterrat Regular",
                                        fontSize: 14,
                                        color: Colors.black87
                                        ),),
                                    ]
                                  ),
                                ),
                              );
                            },
                            depth: 10,
                            depthColor: Colors.grey[500],
                            onTap: () => print('Hello, World!'),
                            shadow: BoxShadow(color: Colors.black54, blurRadius: 10, spreadRadius: -20, offset: Offset(0, 40)),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 250,
                          child: HoverCard(
                            builder: (context, hovering) {
                              return Container(
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:  MainAxisAlignment.center,
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        'assets/images/sign.svg',
                                        height: 110,),
                                      Text('Conventions',
                                        style: TextStyle(
                                        fontFamily: "Monsterrat Regular",
                                        fontSize: 14,
                                        color: Colors.black87
                                        ),),
                                    ]
                                  ),
                                ),
                              );
                            },
                            depth: 10,
                            depthColor: Colors.grey[500],
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignatureAll()),),
                            shadow: BoxShadow(color: Colors.black54, blurRadius: 10, spreadRadius: -20, offset: Offset(0, 40)),
                          ),
                        ), 
                      ],
                      ),
                  ),
                ],
              ),
            ),
          )
        ],
        ),
    );
  }
}