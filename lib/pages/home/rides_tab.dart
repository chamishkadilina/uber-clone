import 'package:flutter/material.dart';
import 'package:uberclone/components/banner_tile.dart';
import 'package:uberclone/components/long_banner_tile.dart';
import 'package:uberclone/components/pickup_time_button.dart';
import 'package:uberclone/components/location_card.dart';
import 'package:uberclone/components/services_squre_tile.dart';
import 'package:uberclone/pages/home/map_page.dart';
import 'package:uberclone/pages/home/pickup_page.dart';
import 'package:uberclone/pages/services/intercity_page.dart';
import 'package:uberclone/pages/services/package_page.dart';
import 'package:uberclone/pages/services/rentals_page.dart';
import 'package:uberclone/pages/services/ride_page.dart';
import 'package:uberclone/pages/services/services_page.dart';

class RidesTab extends StatelessWidget {
  const RidesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SearchBar(
              padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(
                  horizontal: 16,
                ),
              ),
              controller: SearchController(),
              leading: const Icon(Icons.search),
              hintText: 'Where to?',
              hintStyle: const MaterialStatePropertyAll(
                TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              backgroundColor: MaterialStatePropertyAll(Colors.grey.shade200),
              overlayColor: MaterialStatePropertyAll(Colors.grey.shade300),
              elevation: const MaterialStatePropertyAll(0),
              keyboardType: TextInputType.streetAddress,
              trailing: [
                PickupTimeButton(
                  onTap: () {
                    // go to pickup page
                    Navigator.pushNamed(context, PickupPage.id);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // // from location
          // LocationCard(
          //   onTap: () {
          //     // go to map page
          //     Navigator.pushNamed(context, MapPage.id);
          //   },
          //   location: 'Ragama',
          // ),
          // const SizedBox(height: 6),

          // const SizedBox(child: Divider(thickness: 0.5)),
          // const SizedBox(height: 6),

          // to location
          LocationCard(
            onTap: () {
              // go to map page
              Navigator.pushNamed(context, MapPage.id);
            },
            location: 'Mahara Junction',
            road: 'Kandy Rd, Kadawatha',
          ),
          const SizedBox(height: 20),

          // suggestions
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Suggestions',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Spacer(),
              // see all
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ServicesPage.id);
                },
                child: const Text(
                  'See All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 4),
            ],
          ),
          const SizedBox(height: 8),
          // horizontal items
          Row(
            children: [
              // ride tile
              Expanded(
                child: ServicesSqureTile(
                  onTap: () {
                    Navigator.pushNamed(context, RidePage.id);
                  },
                  image: 'assets/images/ig_car.png',
                  text: 'Ride',
                ),
              ),

              // package tile
              Expanded(
                child: ServicesSqureTile(
                  onTap: () {
                    Navigator.pushNamed(context, PackagePage.id);
                  },
                  image: 'assets/images/ig_package.png',
                  text: 'Package',
                ),
              ),

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
                  text: 'Rental',
                ),
              ),
            ],
          ),
          const SizedBox(height: 28),

          // long card listView
          SizedBox(
            height: 132,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                // You have multiple promos
                LongBannerTile(
                  image: 'assets/images/ig_card8.png',
                  color: Color(0xFF0C572C),
                  titleText: 'You have multiple\npromos',
                  text: 'Terms apply',
                ),
                // Ride on your terms
                LongBannerTile(
                  image: 'assets/images/ig_card7.png',
                  color: Color(0xFFC54601),
                  titleText: 'Ride on your terms',
                  text: 'Try Uber Tuk',
                ),
                // Book cars by the hour
                LongBannerTile(
                  image: 'assets/images/ig_card6.png',
                  color: Color(0xFFAAC9FF),
                  fontColor: Colors.black,
                  titleText: 'Book cars by the hour',
                  text: 'Try Uber Rental',
                ),
                // Schedule your ride
                LongBannerTile(
                  image: 'assets/images/ig_card3.png',
                  color: Color(0xFF949CE4),
                  titleText: 'Schedule your ride',
                  text: 'Try Reserve',
                ),
                // Outstation cabs on demand
                LongBannerTile(
                  image: 'assets/images/ig_card5.png',
                  color: Color(0xFFFDF2DC),
                  fontColor: Colors.black,
                  titleText: 'Outstation cabs on\ndemand',
                  text: 'Try Intercity',
                ),
                // Ride on your schedule
                LongBannerTile(
                  image: 'assets/images/ig_card2.png',
                  color: Color(0xFF3A1558),
                  titleText: 'Ride on your\nschedule',
                  text: 'Reserve a ride',
                ),
                // Enjoy a comfortable experience
                LongBannerTile(
                  image: 'assets/images/ig_card1.png',
                  color: Color(0xFF98644C),
                  titleText: 'Enjoy a comfortable\nexperience',
                  text: 'Try Uber Premier',
                ),
                // Ready? Then let's roll.
                LongBannerTile(
                  image: 'assets/images/ig_card9.png',
                  color: Color(0xFFF2E4FE),
                  fontColor: Colors.black,
                  titleText: 'Ready? Then let\'s roll.',
                  text: 'Ride with Uber',
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),

          // Save everyday
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Save everyday',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(height: 4),

          // horizontal listView
          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // Tuk rides
                BannerTile(
                  onTap: () {},
                  image: 'assets/images/ig_banner16.png',
                  titleText: 'Tuk rides',
                  text: 'Upfront fares, doorstep pickups',
                ),
                // Uber Moto rides
                BannerTile(
                  onTap: () {},
                  image: 'assets/images/ig_banner15.png',
                  titleText: 'Uber Moto rides',
                  text: 'Affordable motorcycle pickups',
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),

          // commute smarter
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Commute smarter',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(height: 4),

          // horizontal listView
          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // Go with Uber Tuk
                BannerTile(
                  onTap: () {},
                  image: 'assets/images/ig_banner14.png',
                  titleText: 'Go with Uber Tuk',
                  text: 'Doorstep pickup, no bargaining',
                ),
                // Hop on Uber Moto
                BannerTile(
                  onTap: () {},
                  image: 'assets/images/ig_banner13.png',
                  titleText: 'Hop on Uber Moto',
                  text: 'Move through traffic & save time',
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),

          // Ride as you like it
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Ride as you like it',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(height: 4),

          // horizontal listView
          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // Book Intercity
                BannerTile(
                  onTap: () {},
                  image: 'assets/images/ig_banner8.png',
                  titleText: 'Book Intercity',
                  text: 'Travel outstation with ease',
                ),
                // Book Uber XL
                BannerTile(
                  onTap: () {},
                  image: 'assets/images/ig_banner9.png',
                  titleText: 'Book Uber XL',
                  text: 'Travel with luggage and friends',
                ),

                // Book Premier
                BannerTile(
                  onTap: () {},
                  image: 'assets/images/ig_banner11.png',
                  titleText: 'Book Premier',
                  text: 'Extra comfort for special days',
                ),
                // Book Rentals
                BannerTile(
                  onTap: () {},
                  image: 'assets/images/ig_banner12.png',
                  titleText: 'Book Rentals',
                  text: 'Travel stress-free all day',
                ),
                // Reserve your ride
                BannerTile(
                  onTap: () {},
                  image: 'assets/images/ig_banner10.png',
                  titleText: 'Reserve your ride',
                  text: 'Reliable airport trips',
                ),
              ],
            ),
          ),
          const SizedBox(height: 72),
        ],
      ),
    );
  }
}
