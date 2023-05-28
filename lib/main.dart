// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:project_management_app/auth/google_auth.dart';
import 'package:project_management_app/pages/login_page.dart';
// import 'package:provider/provider.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Management App',
      theme: ThemeData(
        // fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
