import 'package:get/get.dart';
import 'package:recipes/domain/meals_use_case.dart';

void registerDataModuleDependencies() {
  Get.lazyPut<MealsUseCase>(() => MealsUseCase());
}
