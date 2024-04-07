import 'package:recipes/data/models/meal.dart';
import 'package:recipes/data/repositories/meal_repository.dart';

class MealsUseCase {
  Future<List<Meal>> getMealsByName(String name) async {
    return MealRepository.findMealsByName(name);
  }
}
