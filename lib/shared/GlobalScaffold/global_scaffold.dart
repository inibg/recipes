import 'package:flutter/material.dart';

class GlobalScaffold extends StatelessWidget {
  const GlobalScaffold({
    super.key,
    this.body,
  });

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body != null
          ? SafeArea(
              child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: body!,
            ))
          : null,
    );
  }
}
