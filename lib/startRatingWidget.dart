import 'package:flutter/material.dart';

class StarRatingWidget extends StatelessWidget {
  final double rating;
  final int totalStars;
  final double starSize;
  final double spacing;
  final Color textColor;
  final String text;

  const StarRatingWidget({
    super.key,
    required this.rating,
    required this.totalStars,
    required this.starSize,
    required this.spacing,
    required this.textColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Display star icons based on rating
        for (int i = 0; i < totalStars; i++)
          Icon(
            i < rating.floor() ? Icons.star : Icons.star_border,
            size: starSize,
            color: Colors.white,
          ),
        SizedBox(width: spacing), // Add spacing between stars and text
        Text(
          text,
          style: const TextStyle(color: Colors.white60),
        ),
      ],
    );
  }
}
