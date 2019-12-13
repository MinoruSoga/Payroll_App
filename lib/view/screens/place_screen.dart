import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:payroll_app/view/widgets/side_menu.dart';

class PlaceScreen extends StatefulWidget {
  static final String id = 'place_screen';
  @override
  _PlaceScreenState createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Place Screen"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: SideMenu(),
      body: Container(
        child: Center(
          child: Text("Place Page"),
        ),
      ),
    );
  }
}
