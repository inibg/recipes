import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes/domain/controller/home_controller.dart';
import 'package:recipes/pages/home/widgets/top_bar.dart';
import 'package:recipes/shared/GlobalScaffold/global_scaffold.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const GlobalScaffold(
        body: Column(
      children: [
        TopBar(),
      ],
    ));
  }
}
