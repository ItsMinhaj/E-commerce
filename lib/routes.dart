import 'package:ecommerce_app/screens/login_successful/login_successful_screen.dart';
import 'package:ecommerce_app/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/widgets.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/sign_in/sign_in.dart';
import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  LoginSuccessfulScreen.routeName: (context) => LoginSuccessfulScreen(),
};
