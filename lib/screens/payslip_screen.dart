import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:payroll_app/widgets/side_menu.dart';

class PayslipScreen extends StatefulWidget {
  static final String id = 'payslip_screen';
  @override
  _PayslipScreenState createState() => _PayslipScreenState();
}

class _PayslipScreenState extends State<PayslipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payslip Screen"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: SideMenu(),
      body: Container(
        child: Center(
          child: Text("Payslip Page"),
        ),
      ),
    );
  }
}
