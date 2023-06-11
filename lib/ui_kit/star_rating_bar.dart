import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StarRatingBar extends StatelessWidget {
  const StarRatingBar({
    super.key,
    required this.rate,
    this.itemSize = 40.0,
  });

  final double rate;
  final double itemSize;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemSize: itemSize,
      rating: rate,
      direction: Axis.horizontal,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );
  }
}
