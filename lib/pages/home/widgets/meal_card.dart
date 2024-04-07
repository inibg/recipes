import 'package:flutter/material.dart';
import 'package:recipes/data/models/meal.dart';
import 'package:recipes/shared/BlurContainer/blur_container.dart';

class MealCard extends StatelessWidget {
  const MealCard({
    super.key,
    required this.meal,
  });

  final Meal meal;
  static const double _radius = 16.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_radius),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(_radius),
          ),
          child: Stack(
            children: [
              ..._buildBaseStackContent(),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BlurContainer(
                          radius: 16,
                          child: Text(
                            meal.strCategory,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const BlurContainer(
                          child: Icon(
                            Icons.bookmark_border,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      meal.strMeal,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      meal.strArea,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildBaseStackContent() {
    return [
      Image.network(
        meal.strMealThumb,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(_radius),
          ),
          gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.8),
            ],
            stops: const [
              0.0,
              1,
            ],
          ),
        ),
      ),
    ];
  }
}
