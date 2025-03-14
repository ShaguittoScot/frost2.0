import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:frost20/screens/home_screen.dart';
import 'screens/auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Refrigerador App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirebaseAuth.instance.currentUser == null
          ? AuthScreen()
          : HomeScreen(),
    );
  }
}
