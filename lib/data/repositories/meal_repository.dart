import 'package:recipes/data/models/meal.dart';
import 'package:recipes/services/http_service.dart';

abstract class MealRepository {
  static Future<List<Meal>> findMealsByName(String name) async {
    List<Meal> meals = [];
    try {
      final response = await HTTPService.request(
          path: "/search.php", queryParameters: {"s": name});
      meals = Meal.fromJsonList(response);
      return meals;
    } catch (_) {
      rethrow;
    }
  }
}
