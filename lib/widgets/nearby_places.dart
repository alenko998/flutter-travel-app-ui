// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_app_ui/models/nearby_places_model.dart';
import 'package:travel_app_ui/widgets/distance.dart';

class NearbyPlaces extends StatelessWidget {
  const NearbyPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(nearbyPlaces.length, ((index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: SizedBox(
          height: 135,
          width: double.maxFinite,
          child: Card(
            elevation: 0.4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: (() {}),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      nearbyPlaces[index].image,
                      height: double.maxFinite,
                      width: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sea of Peace",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text("Portic Team"),
                        SizedBox(
                          height: 10,
                        ),
                        Distance(),
                        Spacer(),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 14,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(fontSize: 12),
                            ),
                            Spacer(),
                            RichText(
                                text: TextSpan(
                                    text: "\$22",
                                    children: [
                                      TextSpan(
                                          text: "/ Person",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54))
                                    ],
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Theme.of(context).primaryColor)))
                          ],
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
      );
    })));
  }
}
