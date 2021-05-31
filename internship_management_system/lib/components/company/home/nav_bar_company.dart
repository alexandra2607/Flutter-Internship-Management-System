import 'package:flutter/material.dart';
import 'package:internship_management_system/screens/LogIn.dart';

class NavigationBarCompany extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
          accountName: Text('Mirosoft'),
          accountEmail: Text('microsoft.upb@company.ro'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: 
              Image.asset(
                'assets/images/microsoft.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                ),
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
	                  Colors.orange[200],
                    Colors.orangeAccent[400],
                  ]
                ),
                ),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Edit profile'),
            onTap: () => {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.picture_as_pdf_sharp),
            title: Text('Sign convention'),
            onTap: () => {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LogInScreen()),)
            },
          ),
        ],
      ),
    );
  }
}
