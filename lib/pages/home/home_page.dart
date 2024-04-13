import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    return const DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              // Create the tabs
              TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home)),
                  Tab(icon: Icon(Icons.edit_location)),
                ],
              ),
              // Create content for each tab
              Expanded(
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
