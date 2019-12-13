import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:payroll_app/widgets/side_menu.dart';

class EmployeeScreen extends StatefulWidget {
  static final String id = 'employee_screen';
  @override
  _EmployeeScreenState createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Screen"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: SideMenu(),
      body: Container(
        child: Center(
          child: Text("Employee Page"),
        ),
      ),
    );
  }
}
