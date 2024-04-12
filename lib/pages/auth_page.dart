import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uberclone/pages/intro_page.dart';
import 'package:uberclone/pages/login_or_register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  static String id = 'auth_page';

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // if user logged in
          if (snapshot.hasData) {
            return const IntroPage();
          }
          // if user not logged in
          else {
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
