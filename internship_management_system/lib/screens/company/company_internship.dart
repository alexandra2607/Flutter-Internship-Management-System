import 'package:flutter/material.dart';

import 'package:internship_management_system/components/company/jobs/pages/home_page.dart';
import 'package:internship_management_system/components/company/jobs/provider/todos.dart';
import 'package:provider/provider.dart';


class CompanyInternship extends StatelessWidget {
  static final String title = 'Todo App';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodosProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(
            primarySwatch: Colors.orangeAccent[300],
            scaffoldBackgroundColor: Color(0xFFf6f5ee),
          ),
          home: HomePage(),
        ),
      );
}