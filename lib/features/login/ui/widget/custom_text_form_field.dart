import 'package:flutter/material.dart';
import 'package:flutter_advanced_courese/core/theming/colors.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final bool showVisibility;
  final TextEditingController? controller;
  final FormFieldValidator<String> validator;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.showVisibility,
    this.controller,
    required this.validator,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.showVisibility ? isObsecure : false,
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        hintText: widget.hintText,
        fillColor: const Color.fromARGB(255, 238, 238, 238),
        suffixIcon: widget.showVisibility
            ? GestureDetector(
                onTap: () {
                  setState(() => isObsecure = !isObsecure);
                },
                child: Icon(
                  isObsecure
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: isObsecure
                      ? ColorsManager.mainBlue
                      : ColorsManager.grey,
                ),
              )
            : const SizedBox.shrink(),
        hintStyle: TextStyle(color: Colors.grey[350]),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: ColorsManager.mainBlue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: ColorsManager.lightGrey, width: 0.1),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
