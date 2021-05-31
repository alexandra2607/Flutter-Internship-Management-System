import 'package:flutter/material.dart';
import 'package:internship_management_system/components/student/nav_bar.dart';
import 'package:internship_management_system/components/student/view_job_stud.dart';


class StudentHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange),
      drawer: NavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              padding: EdgeInsets.only(left: 25, right: 25, top: 60),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50.0), 
                  bottomLeft: Radius.circular(50.0)
                ),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
                    Colors.orangeAccent[400],
	                  Colors.orange[200]
                  ]
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Image.asset('assets/images/menu.png', width: 20,),
                  SizedBox(height: 15,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Text('Find internships', style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(97, 90, 90, 1)
                        )),
                      ),
                      Expanded(
                        flex: 3,
                        child: Image.asset('assets/images/logo.png'),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0, -35),
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 20, top: 8),
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[350],
                      blurRadius: 20.0,
                      offset: Offset(0, 10.0)
                    )
                  ],
                  borderRadius: BorderRadius.circular(0.5),
                  color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search, color: Colors.black, size: 20.0,),
                    border: InputBorder.none,
                    hintText: 'Search'
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Choose \na category', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromRGBO(97, 90, 90, 1)
                      )),
                      Container(
                        child: Row(
                          children: <Widget>[
                            FlatButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              padding: EdgeInsets.all(10),
                              onPressed: () {},
                              color: Colors.orange[100],
                              child: Text('Payed', style: TextStyle(
                                color: Colors.orange,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              )),
                            ),
                            SizedBox(width: 20.0,),
                            FlatButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              padding: EdgeInsets.all(10),
                              onPressed: () {},
                              color: Color.fromRGBO(97, 90, 90, 0.1),
                              child: Text('Unpaid', style: TextStyle(
                                color: Color.fromRGBO(97, 90, 90, 0.6),
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              )),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    onTap: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ViewJobStud()),)
                    },
                     child: Card(
                      elevation: 8,
                      child: Container(
                        width: 150,
                        height: 100,
                        child: Column(
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/images/microsoft.png',
                              height: 110,),
                            Text('Microsoft',
                              style: TextStyle(
                              fontFamily: "Monsterrat Medium",
                              fontSize: 20,
                              color: Colors.black87
                              ),),
                              Text('Job title',
                                style: TextStyle(
                                fontFamily: "Monsterrat Regular",
                                fontSize: 16,
                                color: Colors.black87
                                ),),
                          ]
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Widget makeCard({context, startColor, endColor, image}) {
  //   return GestureDetector(
  //     onTap: () {
  //       Navigator.push(context, MaterialPageRoute(builder: (context) => ViewSocks()),);
  //     },
  //     child: AspectRatio(
  //       aspectRatio: 4/5,
  //       child: Container(
  //         margin: EdgeInsets.only(right: 20),
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(13.0),
  //           gradient: LinearGradient(
  //             begin: Alignment.topLeft,
  //             colors: [
  //               startColor,
  //               endColor
  //             ],
  //           ),
  //           boxShadow: [
  //             BoxShadow(
  //               color: Colors.grey[350],
  //               blurRadius: 10,
  //               offset: Offset(5, 10)
  //             )
  //           ]
  //         ),
  //         child: Padding(
  //           padding: EdgeInsets.all(50),
  //           child: Center(
  //             child: Image.asset(image),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}