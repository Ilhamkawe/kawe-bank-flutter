import 'package:bank_kawe/views/screens/SignUp/sign_up_upload_profile_screen.dart';
import 'package:bank_kawe/views/screens/sign_in_screen.dart';
import 'package:bank_kawe/views/screens/SignUp/sign_up_screen.dart';
import "package:flutter/material.dart";
import 'package:bank_kawe/views/screens/splash_screen.dart';

// render app
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/sign_up",
      routes: {
        "/": (context) => const SplashScreen(),
        "/sign_in": (context) => const SignIn(),
        "/sign_up": (context) => const SignUp(),
        "/sign_up/profile/update": (context) => const SignUpUpdateProfile(),
      },
    );
  }
}
