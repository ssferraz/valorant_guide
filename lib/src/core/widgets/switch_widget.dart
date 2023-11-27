import 'package:flutter/material.dart';

class SwitchWidget extends StatelessWidget {
  final bool value;
  final void Function() onChanged;

  const SwitchWidget({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: (_) => onChanged.call(),
    );
  }
}
