import 'package:flutter/material.dart';
import 'package:payroll_app/services/auth_service.dart';

class HomeScreen extends StatefulWidget {
  static final String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: FlatButton(
          onPressed: () => AuthService.logout(context),
          child: Text('LOGOUT___'),
        ),
      ),
    );
  }
}
