import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hover_effect/hover_effect.dart';
import 'package:internship_management_system/screens/LogIn.dart';
import 'package:internship_management_system/screens/dean/create_student_account.dart';
import 'package:internship_management_system/signature/main_signature.dart';

class DeanHome extends StatefulWidget {
  @override
  _DeanHomeState createState() => _DeanHomeState();
}

class _DeanHomeState extends State<DeanHome> {
  @override
  Widget build(BuildContext context) {
    //size for screen
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: 
          // Image.asset(
          //     "assets/images/logo.png",
          //     fit: BoxFit.contain,
          //     height: 72,
          //   ),     
            IconButton(
              alignment: Alignment.centerLeft,
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogInScreen()),
                )
              }, icon: Icon(Icons.arrow_back)
              ),
        backgroundColor: Colors.orange,
        ),

      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.orangeAccent[400],
	                 Colors.orange[200]
                ])
              // image: DecorationImage(
              //   alignment: Alignment.topCenter,
              //   image: AssetImage('assets/images/top_header.png')
              //   ),
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
                        CircleAvatar(
                          radius: 40,
                           backgroundImage: AssetImage('assets/images/admin.png')
                        ),
                        SizedBox(width: 14),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Dean UPB',
                            style: TextStyle(
                              fontFamily: "Montserrat Medium",
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            )),
                            Text('admin',
                            style: TextStyle(
                              fontFamily: "Montserrat Regular",
                              color: Colors.white,
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
                                        'assets/images/group.svg',
                                        height: 110,),
                                      Text('Create accounts',
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
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CreateStudentAccount
                            ()),),
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
                                        'assets/images/team.svg',
                                        height: 110,),
                                      Text('Mentors',
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
                                        'assets/images/buildings.svg',
                                        height: 110,),
                                      Text('Companies',
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
                                        'assets/images/settings.svg',
                                        height: 110,),
                                      Text('Settings',
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