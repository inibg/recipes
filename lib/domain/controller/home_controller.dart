import 'package:get/get.dart';
import 'package:recipes/domain/meals_use_case.dart';

class HomeController extends GetxController {
  final MealsUseCase _mealsUseCase = Get.find<MealsUseCase>();
  final RxBool isLoading = true.obs;
  final RxList meals = [].obs;

  @override
  void onInit() async {
    super.onInit();
    final results = await _mealsUseCase.getMealsByName("");
    meals.assignAll(results);
    isLoading.value = false;
  }
}
