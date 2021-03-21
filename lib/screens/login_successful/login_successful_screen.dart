import 'package:ecommerce_app/screens/login_successful/components/body.dart';
import 'package:flutter/material.dart';

class LoginSuccessfulScreen extends StatelessWidget {
  static String routeName = "/login_successful";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login Successful")),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Body(),
    );
  }
}
