import 'package:flutter/material.dart';

class AdditionalInformation extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const AdditionalInformation({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        Icon(icon, size: 36),
        Text(label, style: const TextStyle(fontSize: 16)),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
