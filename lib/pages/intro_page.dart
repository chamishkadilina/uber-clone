import 'package:flutter/material.dart';
import 'package:uberclone/components/my_button.dart';
import 'package:uberclone/pages/home/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  static String id = 'intro_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF293241),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                // uber icon
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/ic_uber.png',
                      color: Colors.white,
                      width: 160,
                    ),
                  ],
                ),
                const SizedBox(height: 120),

                // large center image
                Image.asset('assets/images/ig_taxi.png'),
                const SizedBox(height: 20),

                // Get started with Uber
                const Text(
                  'Get started with Uber',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),

                // continue button
                MyButton(
                  onTap: () {
                    Navigator.pushNamed(context, HomePage.id);
                  },
                  text: 'Continue',
                  icon: Icons.arrow_forward,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
