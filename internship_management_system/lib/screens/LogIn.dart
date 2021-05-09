import 'package:flutter/material.dart';
import 'package:internship_management_system/screens/company_home.dart';
import 'package:internship_management_system/screens/dean_home.dart';
import 'package:internship_management_system/screens/student_home.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      	child: Container(
	        child: Column(
	          children: <Widget>[
	            Container(
	              height: 300,
	              
	              child: Stack(
	                children: <Widget>[
                    
	                  Positioned(
	                    
	                    top: 40,
	                    width: 200,
	                    height: 350,
	                    child:  Container(
	                      decoration: BoxDecoration(
	                        image: DecorationImage(
	                          image: AssetImage('assets/images/logo.png')
	                        )
	                      ),
	                    ),
	                  ),
         
	                ],
	              ),
	            ),
	            Padding(
	              padding: EdgeInsets.all(30.0),
	              child: Column(
	                children: <Widget>[
	                   Container(
	                    padding: EdgeInsets.all(5),
	                    decoration: BoxDecoration(
	                      color: Colors.white,
	                      borderRadius: BorderRadius.circular(10),
	                      boxShadow: [
	                        BoxShadow(
	                          color: Color.fromRGBO(143, 148, 251, .2),
	                          blurRadius: 20.0,
	                          offset: Offset(0, 10)
	                        )
	                      ]
	                    ),
	                    child: Column(
	                      children: <Widget>[
	                        Container(
	                          padding: EdgeInsets.all(8.0),
	                          decoration: BoxDecoration(
	                            border: Border(bottom: BorderSide(color: Colors.grey[100]))
	                          ),
	                          child: TextField(
                              keyboardType: TextInputType.emailAddress,
	                            decoration: InputDecoration(
	                              border: InputBorder.none,
	                              hintText: "Email",
	                              hintStyle: TextStyle(color: Colors.grey[400]),
	                            ),
                                onChanged: (value) {
                                  setState(() {
                                    _email = value.trim();
                                  });
                                },
	                          ),
	                        ),
	                        Container(
	                          padding: EdgeInsets.all(8.0),
	                          child: TextField(
                              obscureText: true,
	                            decoration: InputDecoration(
	                              border: InputBorder.none,
	                              hintText: "Password",
	                              hintStyle: TextStyle(color: Colors.grey[400])
	                            ),
                              onChanged: (value) {
                              setState(() {
                                _password = value.trim();
                              });
                            },
	                          ),
	                        )
	                      ],
	                    ),
	                  ),
	                  SizedBox(height: 30,),
	                   InkWell(
                       onTap: () {
                         if(_email.contains('admin')) 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DeanHome()),);
                        else if (_email.contains('stud'))
                          Navigator.push(context, MaterialPageRoute(builder: (context) => StudentHome()),);
                        else if (_email.contains('company'))
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CompanyHome()),);
                        else 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LogInScreen()),);
                          //add notification
                        },
                        child: Container(        
	                      height: 50,
	                      decoration: BoxDecoration(
	                        borderRadius: BorderRadius.circular(10),
	                        gradient: LinearGradient(
	                          colors: [
                            Colors.orangeAccent[400],
	                          Colors.orange[200]
	                          ]
	                        )
	                      ),
	                      child:
                       Center(
	                        child: Text("Login", 
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
	                      ),
	                  ),
	                   ),
	                  SizedBox(height: 70,),
	                   Text("Forgot Password?", style: TextStyle(color: Colors.orange[400]),),
	                ],
	              ),
	            )
	          ],
	        ),
	      ),
      )
    );
  }
}