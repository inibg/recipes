import 'package:flutter/material.dart';
import 'package:recipes/pages/home/widgets/top_bar.dart';
import 'package:recipes/shared/GlobalScaffold/global_scaffold.dart';

class HomePage extends StatelessWidget {
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
