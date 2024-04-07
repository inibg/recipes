import 'package:get/get.dart';
import 'package:recipes/domain/meals_use_case.dart';

class HomeController extends GetxController {
  final MealsUseCase _mealsUseCase = Get.find<MealsUseCase>();

  @override
  void onInit() async {
    super.onInit();
    final results = await _mealsUseCase.getMealsByName("");

    print(results.length);
  }
}
