import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:recipes/domain/controller/home_controller.dart';
import 'package:recipes/pages/home/widgets/meal_card.dart';
import 'package:recipes/pages/home/widgets/shimmer_meal_card.dart';
import 'package:recipes/pages/home/widgets/top_bar.dart';
import 'package:recipes/shared/GlobalScaffold/global_scaffold.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
        body: Column(
      children: [
        const TopBar(),
        Obx(
          () => Visibility(
            visible: controller.isLoading.value,
            replacement: Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemCount: controller.meals.length,
                itemBuilder: (context, index) {
                  final meal = controller.meals[index];
                  return MealCard(meal: meal);
                },
              ),
            ),
            child: Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const ShimmerMealCard();
                },
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
