// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_app_ui/pages/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Spacer(),
              Image.asset(
                'lib/assets/illustration.png',
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Explore your journey \n only with us",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "All your vacation destinations are here, \n enjoy your holiday",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: (() {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    }),
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: StadiumBorder(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 15)),
                    child: Text("Get Started"),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
