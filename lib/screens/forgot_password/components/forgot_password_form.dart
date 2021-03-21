import 'package:ecommerce_app/components/custom_suffix_icon.dart';
import 'package:ecommerce_app/components/default_button.dart';
import 'package:ecommerce_app/components/form_error.dart';
import 'package:ecommerce_app/components/no_account_text.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  List<String> errors = [];
  String email;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              onSaved: (newValue) => email = newValue,
              onChanged: (value) {
                if (value.isEmpty && errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.remove(kEmailNullError);
                  });
                } else if (emailValidatorRegExp.hasMatch(value) &&
                    errors.contains(kInvalidEmailNullError)) {
                  setState(() {
                    errors.remove(kInvalidEmailNullError);
                  });
                }
                return null;
              },
              validator: (value) {
                if (value.isEmpty && !errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.add(kEmailNullError);
                  });
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(kInvalidEmailNullError)) {
                  setState(() {
                    errors.add(kInvalidEmailNullError);
                  });
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: 'E-mail',
                  hintText: 'Enter your  -mail',
                  suffixIcon:
                      CustomSuffixIcon(svgIcon: 'assets/icons/Mail.svg')),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            FormErrors(errors: errors),
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            DefaultButton(
              text: "Continue",
              press: () {
                if (_formkey.currentState.validate()) {
                  // Do whatever you want........
                }
              },
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            NoAccountText(),
          ],
        ),
      ),
    );
  }
}
