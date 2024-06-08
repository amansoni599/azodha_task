import 'package:flutter/material.dart';
import 'package:logistifie/startRatingWidget.dart';

class CompleteWidget extends StatelessWidget {
  const CompleteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/background.png'), // Path to your asset image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              left: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black
                            .withOpacity(0.4), // 40% opacity black at the top
                        Colors.black, // Transparent at the bottom
                      ],
                    ),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                width: MediaQuery.of(context).size.width,
                child: const Padding(
                  padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Dare Devil",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          Spacer(),
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          "21 October 2012 - 45 min",
                          style: TextStyle(color: Colors.white60),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: StarRatingWidget(
                          rating: 4.5, // Set the rating value
                          totalStars: 5, // Total number of stars
                          starSize: 20, // Size of each star icon
                          spacing: 5, // Spacing between stars and text
                          textColor: Colors.black,
                          text: '4/5 star rating', // Color of the text
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          "Daredevil: Matt Murdock, a blind lawyer by day and vigilante by night, tries to protect Hell’s Kitchen with his enhanced abilities as Daredevil outside the system while also trying to live a (somewhat) normal life as a lawyer working within the bounds of the law...",
                          style: TextStyle(color: Colors.white60),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
