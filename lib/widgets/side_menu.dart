import 'package:flutter/material.dart';
import 'package:payroll_app/screens/employee_screen.dart';
import 'package:payroll_app/screens/home_screen.dart';
import 'package:payroll_app/screens/payslip_screen.dart';
import 'package:payroll_app/screens/place_screen.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Name"),
            accountEmail: Text("Email@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("P"),
            ),
          ),
          ListTile(
            title: Text("Home"),
            trailing: Icon(Icons.home),
            onTap: () => Navigator.pushNamed(context, HomeScreen.id),
          ),
          ListTile(
            title: Text("場所別"),
            trailing: Icon(Icons.place),
            onTap: () => Navigator.pushNamed(context, PlaceScreen.id),
          ),
          ListTile(
            title: Text("従業員別"),
            trailing: Icon(Icons.person),
            onTap: () => Navigator.pushNamed(context, EmployeeScreen.id),
          ),
          ListTile(
            title: Text("給与明細作成"),
            trailing: Icon(Icons.payment),
            onTap: () => Navigator.pushNamed(context, PayslipScreen.id),
          ),
          Divider(),
          ListTile(
            title: Text("Close"),
            trailing: Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
// drawer: Drawer(

//       ),
