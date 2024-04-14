import 'package:flutter/material.dart';
import 'package:uberclone/components/pickup_time_button.dart';
import 'package:uberclone/pages/home/pickup_page.dart';

class RidesTab extends StatelessWidget {
  const RidesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Padding(
          padding: const EdgeInsets.all(16.0),
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
            elevation: const MaterialStatePropertyAll(1),
            keyboardType: TextInputType.streetAddress,
            trailing: [
              PickupTimeButton(
                onTap: () {
                  Navigator.pushNamed(context, PickupPage.id);
                },
              ),
            ],
          ),
        ),

        // from location

        // to location

        // suggestions

        // see all

        // horizontal listView

        // commute smarter

        // horizontal listView
      ],
    );
  }
}
