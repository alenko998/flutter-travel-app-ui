// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travel_app_ui/widgets/custom_icon_button.dart';
import 'package:travel_app_ui/widgets/location_card.dart';
import 'package:travel_app_ui/widgets/nearby_places.dart';
import 'package:travel_app_ui/widgets/recommended_places.dart';
import 'package:travel_app_ui/widgets/tourist_places.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        centerTitle: false,
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Good Morning"),
          Text("User Name", style: Theme.of(context).textTheme.labelMedium)
        ]),
        actions: [
          CustomIconButton(icon: Icon(Ionicons.search_outline)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 12),
            child: CustomIconButton(icon: Icon(Ionicons.notifications_outline)),
          )
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(14),
        children: [
          // location card
          LocationCard(),
          SizedBox(
            height: 15,
          ),
          //categories
          TouristPlaces(),
          SizedBox(
            height: 10,
          ),

          // recommendation section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommendation",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: () {}, child: Text("View All"))
            ],
          ),
          SizedBox(
            height: 10,
          ),

          RecommendedPlaces(),
          SizedBox(
            height: 10,
          ),
          // nearby places
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nearby For You",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: () {}, child: Text("View All"))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          NearbyPlaces(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.bookmark_outline), label: "Bookmark"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.ticket_outline), label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.person_outline), label: "Profile"),
          ]),
    );
  }
}
