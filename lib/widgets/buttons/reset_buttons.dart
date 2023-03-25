import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    super.key, required this.onPressed,
  });
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent),
      onPressed: onPressed,

      child: const Text('Reset',
          style: TextStyle(color: Colors.black)),
    );
  }
}