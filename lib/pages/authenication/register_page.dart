import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uberclone/components/my_button.dart';
import 'package:uberclone/components/my_textfield.dart';
import 'package:uberclone/components/squre_tile.dart';
import 'package:uberclone/services/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({required this.onTap, super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controller
  final email = TextEditingController();
  final password = TextEditingController();
  final conformPassword = TextEditingController();

  // register user method
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

    // try creating the user
    try {
      // pop the loading circle
      Navigator.pop(context);
      // conform password
      if (password.text == conformPassword.text) {
        // creating user
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text,
          password: password.text,
        );
      } else {
        // show Conform Password doesn't matched-dialog message popup
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Password Mismatch'),
              content: const Text(
                  'Passwords Don\'t Match. Please re-enter your password and confirm password to ensure they are the same.'),
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
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);

      //defiend error message
      String errorMessage;
      switch (e.code) {
        case 'weak-password':
          errorMessage = 'dfhdfhdf.'; //The password provided is too weak
          break;
        case 'email-already-in-use':
          errorMessage = 'The account already exists for that email.';
          break;
        default:
          errorMessage =
              'An error occurred during Registering. Please try again.';
      }
      // show appropriate error dialog message popup
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('An Error Occur'),
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
                    'assets/icons/ic_uber.png',
                    width: 196,
                  ),
                  const SizedBox(height: 32),

                  // Let's create an account for you!
                  Text(
                    'Let\'s create an account for you!',
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

                  // conform password textfield
                  MyTextField(
                    controller: conformPassword,
                    hintText: 'Conform Password',
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(height: 8),

                  // log in button
                  MyButton(
                    onTap: logIn,
                    text: 'Register',
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
                      const Text('Already have an account? '),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          'Login now',
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
