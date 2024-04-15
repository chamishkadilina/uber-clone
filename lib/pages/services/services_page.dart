import 'package:flutter/material.dart';
import 'package:uberclone/components/services_rectangle_tile.dart';
import 'package:uberclone/components/services_squre_tile.dart';
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

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  static String id = 'services_page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                // services
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Services',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(height: 32),

                // Go anywhere
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Go anywhere',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // ride & package row
                Expanded(
                  child: Row(
                    children: [
                      // ride tile
                      Expanded(
                        child: ServicesRectangleTile(
                          onTap: () {
                            Navigator.pushNamed(context, RidePage.id);
                          },
                          image: 'assets/images/ig_car.png',
                          text: 'Ride',
                        ),
                      ),

                      // package tile
                      Expanded(
                        child: ServicesRectangleTile(
                          onTap: () {
                            Navigator.pushNamed(context, PackagePage.id);
                          },
                          image: 'assets/images/ig_package.png',
                          text: 'Package',
                        ),
                      ),
                    ],
                  ),
                ),

                // intercity , rentals & reserve row
                Expanded(
                  child: Row(
                    children: [
                      // intercity tile
                      Expanded(
                        child: ServicesSqureTile(
                          onTap: () {
                            Navigator.pushNamed(context, InterCityPage.id);
                          },
                          image: 'assets/images/ig_intercity.png',
                          text: 'Intercity',
                        ),
                      ),

                      // rentals tile
                      Expanded(
                        child: ServicesSqureTile(
                          onTap: () {
                            Navigator.pushNamed(context, RentalsPage.id);
                          },
                          image: 'assets/images/ig_rentals.png',
                          text: 'Rentals',
                        ),
                      ),

                      // reserve tile
                      Expanded(
                        child: ServicesSqureTile(
                          onTap: () {
                            Navigator.pushNamed(context, ReservePage.id);
                          },
                          image: 'assets/images/ig_reserve.png',
                          text: 'Reserve',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  child: Divider(
                    thickness: 4,
                    color: Colors.grey.shade200,
                  ),
                ),
                const SizedBox(height: 16),

                // Get anything delivered
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Get anything delivered',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // food & grocery row
                Expanded(
                  child: Row(
                    children: [
                      // food tile
                      Expanded(
                        child: ServicesRectangleTile(
                          onTap: () {
                            Navigator.pushNamed(context, FoodPage.id);
                          },
                          image: 'assets/images/ig_food.png',
                          text: 'Food',
                        ),
                      ),

                      // grocery tile
                      Expanded(
                        child: ServicesRectangleTile(
                          onTap: () {
                            Navigator.pushNamed(context, GroceryPage.id);
                          },
                          image: 'assets/images/ig_grocery.png',
                          text: 'Grocery',
                        ),
                      ),
                    ],
                  ),
                ),

                // convenience, pharmacy & petsupplies row
                Expanded(
                  child: Row(
                    children: [
                      // convenience tile
                      Expanded(
                        child: ServicesSqureTile(
                          onTap: () {
                            Navigator.pushNamed(context, ConveniencePage.id);
                          },
                          image: 'assets/images/ig_convenience.png',
                          text: 'Convenience',
                        ),
                      ),

                      // pharmacy tile
                      Expanded(
                        child: ServicesSqureTile(
                          onTap: () {
                            Navigator.pushNamed(context, PharmacyPage.id);
                          },
                          image: 'assets/images/ig_pharmacy.png',
                          text: 'Pharmacy',
                        ),
                      ),

                      // pet supplies tile
                      Expanded(
                        child: ServicesSqureTile(
                          onTap: () {
                            Navigator.pushNamed(context, PetPage.id);
                          },
                          image: 'assets/images/ig_pet.png',
                          text: 'Pet',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 148),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
