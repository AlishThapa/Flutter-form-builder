import 'package:flutter/material.dart';

//Save data class
class SaveData extends StatelessWidget {
  const SaveData({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
      onPressed: onPressed,
      child: const Text(
        'Save the data',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

//Read data class
class ReadData extends StatelessWidget {
  const ReadData({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
      onPressed: onPressed,
      child: const Text(
        'Read the data',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
