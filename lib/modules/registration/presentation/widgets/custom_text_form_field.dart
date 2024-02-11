import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final IconData? prefixIcon;
  final Color? iconColor;
  final String? hintText;

  const CustomTextFormField({
    super.key,
    this.label,
    this.prefixIcon,
    this.iconColor,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Colors.blueGrey,
        labelText: label,
        prefixIcon: Icon(prefixIcon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
    );
  }
}
