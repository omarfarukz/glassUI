import 'package:doorder/screens/Auth/forgot_password.dart';
import 'package:doorder/screens/Auth/sign_up.dart';
import 'package:doorder/screens/Home/AddMenue/addMenue.dart';
import 'package:doorder/screens/Home/mainmenue.dart';
import 'package:doorder/screens/homepgae.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/Auth/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Authentication UI',
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      // home: const LogInScreeen(),
      initialRoute: '/',
      routes: {
        '/': (context) => LogInScreeen(),
        'ForgotPassword': (context) => ForgotPassword(),
        'CreateNewAccount': (context) => CreateNewAccount(),
        'MainMenue': (context) => MainMenue(),
        'AddMenue': (context) => AddMenue(),
      },
    );
  }
}
