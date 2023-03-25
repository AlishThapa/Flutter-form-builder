import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
      onPressed: onPressed,
      child: const Text(
        'Submit',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}