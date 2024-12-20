import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key, required this.onPressedAction, required this.childWidget});

  final void Function() onPressedAction;
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressedAction,
        style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
            padding: WidgetStateProperty.all<EdgeInsets>(
              EdgeInsets.all(20),
            ),
            backgroundColor: WidgetStateProperty.all(Color(0xffff9800))),
        child: childWidget);
  }
}
