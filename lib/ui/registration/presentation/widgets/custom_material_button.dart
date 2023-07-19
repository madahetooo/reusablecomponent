import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomMaterialButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        height: 50,
        color: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
