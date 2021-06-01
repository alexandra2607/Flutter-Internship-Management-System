import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internship_management_system/screens/dean/dean_home.dart';

class CreateStudentAccount extends StatefulWidget {
  @override
  _CreateStudentAccountState createState() => _CreateStudentAccountState();
}

class _CreateStudentAccountState extends State<CreateStudentAccount> {
  String _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:      
            IconButton(
              alignment: Alignment.centerLeft,
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeanHome()),
                )
              }, icon: Icon(Icons.arrow_back)
              ),
        backgroundColor: Colors.orange,
        ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email'),
                onChanged: (value) {
                  setState(() {
                    _email = value.trim();
                  });
                },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Passowrd'),
                onChanged: (value) {
                  setState(() {
                    _password = value.trim();
                  });
                },
            ),
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          
           
               InkWell(
                       onTap: () {
                         try {
                            auth.createUserWithEmailAndPassword(
                              email: _email,
                              password: _password
                            );
                            showSuccessfulFlushbar(context);
                          } catch(signUpError) {
                            if(signUpError is PlatformException) {
                              if(signUpError.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
                               showUnsuccessfulFlushbar(context);
                              }
                            }
                          }
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
          ],)
        ],),
      );
    }
                
    void showSuccessfulFlushbar(BuildContext context) {
        Flushbar(
          borderRadius: 8,
          backgroundGradient: LinearGradient(
            colors: [Colors.green[200], Colors.greenAccent.shade700],
            stops: [0.6, 1]
          ),
          boxShadows: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(3,3),
              blurRadius: 3
            )
          ],
          dismissDirection: FlushbarDismissDirection.HORIZONTAL,
          forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
          title: 'Account created succesfully!',
          message: 'You can check your e-mail and send the information to the afferent user.',
        )..show(context);
    }

    void showUnsuccessfulFlushbar(BuildContext context) {
        Flushbar(
          borderRadius: 8,
          backgroundGradient: LinearGradient(
            colors: [Colors.red[400], Colors.redAccent.shade700],
            stops: [0.6, 1]
          ),
          boxShadows: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(3,3),
              blurRadius: 3
            )
          ],
          dismissDirection: FlushbarDismissDirection.HORIZONTAL,
          forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
          title: 'Account already created!',
          message: 'The account already exists',
        )..show(context);
    }
}
