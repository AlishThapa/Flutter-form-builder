import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomFormBuilderTextField extends StatelessWidget {
  const CustomFormBuilderTextField({
    super.key,
    required this.name, required this.hintText,  this.validators,
  });

  final String name;
  final String hintText;
  final FormFieldValidator<String>? validators;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      valueTransformer: (value) => value?.toUpperCase(),
      //changes all the input to uppercase
      name: name,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Colors.teal.shade50,
        filled: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
      validator: validators,
    );
  }
}

