import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyButton extends StatelessWidget {
  final String labelText;
  final void Function()? pressed;
  const MyButton({super.key, required this.labelText, required this.pressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: pressed,
      child: Text(labelText),
    );
  }
}
