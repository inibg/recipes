import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes/shared/GlobalButton/global_button.dart';
import 'package:recipes/translations/messages.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Messages.welcome.tr,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Image.asset(
          'lib/assets/logo.png',
          width: 50,
          fit: BoxFit.fitWidth,
        ),
        GlobalButton(
          onPressed: () => {},
          text: Messages.signIn.tr,
          variant: ButtonVariant.invertedOutlined,
        ),
      ],
    );
  }
}
