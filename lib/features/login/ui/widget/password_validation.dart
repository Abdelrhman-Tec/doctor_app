import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/core/helpers/spacing.dart';
import 'package:flutter_advanced_courese/core/theming/colors.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;
  const PasswordValidation({
    super.key,
    required this.hasLowercase,
    required this.hasUppercase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildPasswordValidation('At least 1 hasLowercase', hasLowercase),
        buildPasswordValidation('At least 1 hasUppercase', hasUppercase),
        buildPasswordValidation('At least 1 hasNumber', hasNumber),
        buildPasswordValidation('At least 1 hasMinLength', hasMinLength),
        buildPasswordValidation(
          'At least 8 hasSpecialCharacter',
          hasSpecialCharacter,
        ),
      ],
    );
  }

  Widget buildPasswordValidation(String text, bool hasIsValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: !hasIsValidated ? ColorsManager.grey : Colors.green,
        ),
        horizontalSpace(10),
        Text(
          text,
          style: TextStyle(
            color: ColorsManager.grey,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            decoration: hasIsValidated
                ? TextDecoration.lineThrough
                : TextDecoration.none,
            decorationColor: Colors.green,
            decorationThickness: 2,
            decorationStyle: TextDecorationStyle.solid,
          ),
        ),
      ],
    );
  }
}
