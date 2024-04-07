import 'package:flutter/material.dart';

enum ButtonVariant { elevated, outlined, text, invertedOutlined }

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.variant = ButtonVariant.elevated,
  });

  final VoidCallback onPressed;
  final String text;
  final ButtonVariant variant;

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case ButtonVariant.elevated:
        return _buildElevatedButton();
      case ButtonVariant.outlined:
        return _buildOutlinedButton();
      case ButtonVariant.text:
        return _buildTextButton();
      case ButtonVariant.invertedOutlined:
        return _buildInvertedOutlinedButton(context);
    }
  }

  Widget _buildElevatedButton() {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }

  Widget _buildOutlinedButton() {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }

  Widget _buildInvertedOutlinedButton(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: theme.colorScheme.onPrimary,
        backgroundColor: theme.colorScheme.primary,
      ),
      child: Text(text),
    );
  }

  Widget _buildTextButton() {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
