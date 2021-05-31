import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internship_management_system/signature/page/signature_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(SignatureAll());
}

class SignatureAll extends StatelessWidget {
  static final String title = 'Signature';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primaryColor: Colors.red,
        ),
        home: SignaturePage(),
      );
}