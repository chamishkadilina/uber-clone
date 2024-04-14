import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uberclone/pages/home/eats_tab.dart';
import 'package:uberclone/pages/home/rides_tab.dart';

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
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const SizedBox(height: 20),
              // Create the tabs
              TabBar(
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Image.asset('assets/images/ig_car.png'),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          'Rides',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Image.asset('assets/images/ig_food.png'),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          'Eats',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              // Create content for each tab
              const Expanded(
                child: TabBarView(
                  children: [
                    // Rides tab
                    RidesTab(),
                    // Eats tab
                    EatsTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
