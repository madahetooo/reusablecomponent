import 'package:flutter/material.dart';
import 'package:reusablecomponent/ui/registration/presentation/widgets/custom_material_button.dart';
import 'package:reusablecomponent/ui/registration/presentation/widgets/custom_text.dart';
import 'package:reusablecomponent/ui/registration/presentation/widgets/custom_text_form_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "Registration Screen",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const CustomText(
                    text: "This is reusable widget",
                    color: Colors.green,
                    fontSize: 30,
                  ),
                  const CustomText(
                    text: "Another Reusable Widget",
                    color: Colors.blue,
                    fontSize: 15,
                  ),
                  const CustomText(
                    text: "Final Reusable Text Widget",
                    color: Colors.purple,
                    fontSize: 25,
                  ),
                  const CustomTextFormField(
                    hintText: "Enter Email Address",
                    label: "Email Address",
                    prefixIcon: Icons.email,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextFormField(
                    label: "Full Name",
                    prefixIcon: Icons.person,
                    iconColor: Colors.green,
                    hintText: "Enter Full Name",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomMaterialButton(
                    label: "Press",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomMaterialButton(
                    label: "Register",
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
