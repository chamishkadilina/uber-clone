import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  static String id = 'home_page';

  final user = FirebaseAuth.instance.currentUser;
  // log user out
  void logOut() async {
    await FirebaseAuth.instance.signOut();
    // navigate back to login page
  }

  @override
  Widget build(BuildContext context) {
    final email = user?.email ?? 'No User';
    return Scaffold(
      backgroundColor: const Color(0xFF293241),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: logOut,
            icon: const Icon(
              Icons.logout_outlined,
            ),
          ),
        ],

        backgroundColor: Colors.grey.shade300,
    

      ),
      body: SafeArea(
        child: Center(
          child: Text(
            'Loggin Successful\n$email',
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
