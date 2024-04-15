import 'package:flutter/material.dart';
import 'package:uberclone/pages/authenication/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:uberclone/pages/home/home_page.dart';
import 'package:uberclone/pages/home/map_page.dart';
import 'package:uberclone/pages/home/pickup_page.dart';
import 'package:uberclone/pages/services/convenience_page.dart';
import 'package:uberclone/pages/services/food_page.dart';
import 'package:uberclone/pages/services/grocery_page.dart';
import 'package:uberclone/pages/services/intercity_page.dart';
import 'package:uberclone/pages/services/package_page.dart';
import 'package:uberclone/pages/services/pet_page.dart';
import 'package:uberclone/pages/services/pharmacy_page.dart';
import 'package:uberclone/pages/services/rentals_page.dart';
import 'package:uberclone/pages/services/reserve_page.dart';
import 'package:uberclone/pages/services/ride_page.dart';
import 'package:uberclone/pages/services/services_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uber Clone',
      home: const AuthPage(),
      routes: {
        AuthPage.id: (context) => const AuthPage(),
        HomePage.id: (context) => HomePage(),
        PickupPage.id: (context) => const PickupPage(),
        MapPage.id: (context) => const MapPage(),
        ServicesPage.id: (context) => const ServicesPage(),
        RidePage.id: (context) => const RidePage(),
        PackagePage.id: (context) => const PackagePage(),
        InterCityPage.id: (context) => const InterCityPage(),
        RentalsPage.id: (context) => const RentalsPage(),
        ReservePage.id: (context) => const ReservePage(),
        FoodPage.id: (context) => const FoodPage(),
        GroceryPage.id: (context) => const GroceryPage(),
        ConveniencePage.id: (context) => const ConveniencePage(),
        PharmacyPage.id: (context) => const PharmacyPage(),
        PetPage.id: (context) => const PetPage(),
      },
    );
  }
}
