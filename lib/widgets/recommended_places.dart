// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travel_app_ui/models/recommended_places.dart';

class RecommendedPlaces extends StatelessWidget {
  const RecommendedPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
                width: 220,
                child: Card(
                  elevation: 0.4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            recommendedPlaces[index].image,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                            height: 150,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              recommendedPlaces[index].location,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.yellow[700],
                            ),
                            Text(
                              recommendedPlaces[index].rating.toString(),
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Ionicons.location,
                              color: Theme.of(context).primaryColor,
                              size: 16,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Location of the place",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        )
                      ]),
                    ),
                  ),
                ));
          },
          separatorBuilder: (context, index) =>
              Padding(padding: EdgeInsets.only(right: 10)),
          itemCount: recommendedPlaces.length),
    );
  }
}
