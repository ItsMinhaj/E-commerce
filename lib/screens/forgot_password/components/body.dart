import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'forgot_password_form.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            Text(
              "Forgot Password",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            Text(
                "Please enter your email and we wiil send\n  you a link to return to your account"),
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            ForgotPasswordForm(),
          ],
        ),
      ),
    );
  }
}
