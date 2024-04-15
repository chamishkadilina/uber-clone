import 'package:flutter/material.dart';
import 'package:uberclone/components/pickup_time_button.dart';
import 'package:uberclone/components/location_card.dart';
import 'package:uberclone/pages/home/map_page.dart';
import 'package:uberclone/pages/home/pickup_page.dart';
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
              elevation: const MaterialStatePropertyAll(1),
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

          // from location
          LocationCard(
            onTap: () {
              // go to map page
              Navigator.pushNamed(context, MapPage.id);
            },
            location: 'Ragama',
          ),
          const SizedBox(height: 6),

          const SizedBox(child: Divider(thickness: 0.5)),
          const SizedBox(height: 6),

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
          const SizedBox(height: 20),
          // horizontal listView

          // commute smarter

          // horizontal listView
        ],
      ),
    );
  }
}
