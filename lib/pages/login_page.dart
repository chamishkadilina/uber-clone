import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uberclone/components/my_button.dart';
import 'package:uberclone/components/my_textfield.dart';
import 'package:uberclone/components/squre_tile.dart';
import 'package:uberclone/services/auth_service.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({required this.onTap, super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controller
  final email = TextEditingController();

  final password = TextEditingController();

  // log user in method
  void logIn() async {
    // show loadin circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);

      //defiend error message
      String errorMessage;
      switch (e.code) {
        case 'user-not-found':
          errorMessage =
              'The email address you entered is not associated with an account.';
          break;
        case 'wrong-password':
          errorMessage = 'The password you entered is incorrect.';
          break;
        case 'invalid-email':
          errorMessage = 'The email address you entered is invalid.';
          break;
        case 'too-many-requests':
          errorMessage = 'Too many login attempts. Please try again later.';
          break;
        default:
          errorMessage = 'An error occurred during login. Please try again.';
      }
      // show appropriate error dialog message popup
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Loggin Error'),
            content: Text(errorMessage),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Back'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // logo
                  Image.asset(
                    'assets/images/ic_uber.png',
                    width: 196,
                  ),

                  // Welcomeback, you've been missed!
                  Text(
                    'Welcome back you\'ve been missed!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // user name textfield
                  MyTextField(
                    controller: email,
                    hintText: 'Email Address',
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 8),

                  // password textfield
                  MyTextField(
                    controller: password,
                    hintText: 'Password',
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(height: 8),

                  // forgot password?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 52),

                  // log in button
                  MyButton(
                    onTap: logIn,
                    text: 'Login',
                  ),
                  const SizedBox(height: 32),

                  // or continue with
                  Row(
                    children: [
                      const Expanded(child: Divider(color: Colors.grey)),
                      const SizedBox(width: 8),
                      Text('Or Continue With',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          )),
                      const SizedBox(width: 8),
                      const Expanded(child: Divider(color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // google + apple sign in buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // google sign in button
                      SqureTile(
                        imagePath: 'assets/icons/ic_google.png',
                        onTap: () {
                          AuthService().signInWithGoogle();
                        },
                      ),
                      const SizedBox(width: 16),

                      // google sign in button
                      SqureTile(
                        imagePath: 'assets/icons/ic_apple.png',
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 96),

                  // not a member? Rgister now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Not a member? '),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          'Register now',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
