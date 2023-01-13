// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0.4,
        child: Row(children: [
          Image.asset(
            'lib/assets/map.png',
            width: 100,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your location",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Theme.of(context).primaryColor),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "United States,New York",
                style: Theme.of(context).textTheme.labelLarge,
              )
            ],
          )
        ]),
      ),
    );
  }
}
