import 'package:flutter/material.dart';
import 'package:logistifie/completewidget.dart';

class SingleWidget extends StatelessWidget {
  const SingleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CompleteWidget()));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: const Color(0xFF818181).withOpacity(0.3), // Background color
          borderRadius: BorderRadius.circular(30), // Rounded corners
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://th.bing.com/th/id/OIP.hKF-QDQbOe-0GEQyJoHfGAHaE8?w=234&h=180&c=7&r=0&o=5&pid=1.7",
                  width: 70,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Friends",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    "PG Sempter 22 2024",
                    style: TextStyle(color: Colors.white60),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.cloud_circle_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        " 22 mins",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
