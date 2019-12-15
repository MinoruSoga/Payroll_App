import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:payroll_app/view/screens/employee_screen.dart';
import 'package:payroll_app/view/screens/home_screen.dart';
import 'package:payroll_app/view/screens/auth/login_screen.dart';
import 'package:payroll_app/view/screens/payslip_screen.dart';
import 'package:payroll_app/view/screens/place_screen.dart';
import 'package:payroll_app/view/screens/auth/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget _getScreenId() {
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot) {
        // if (snapshot.hasData) {
        //   return HomeScreen();
        // } else {
        //   return LoginScreen();
        // }
        return HomeScreen();
      },
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Login UI',
        debugShowCheckedModeBanner: false,
        home: _getScreenId(),
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          SignupScreen.id: (context) => SignupScreen(),
          HomeScreen.id: (context) => HomeScreen(),
          PlaceScreen.id: (context) => PlaceScreen(),
          EmployeeScreen.id: (context) => EmployeeScreen(),
          PayslipScreen.id: (context) => PayslipScreen(),
        });
  }
}
