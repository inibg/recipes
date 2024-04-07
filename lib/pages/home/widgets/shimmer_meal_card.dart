import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerMealCard extends StatelessWidget {
  const ShimmerMealCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: Shimmer(
        direction: ShimmerDirection.ltr,
        period: const Duration(seconds: 3),
        gradient: LinearGradient(
          colors: [
            Colors.grey[100]!,
            Colors.grey[400]!,
            Colors.grey[100]!,
            Colors.grey[400]!,
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
