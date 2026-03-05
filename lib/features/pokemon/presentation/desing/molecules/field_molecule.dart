import 'package:flutter/material.dart';
import 'package:global66/features/pokemon/presentation/desing/atoms/text_atom.dart';

class FieldMolecule extends StatelessWidget {
  final String label;
  final String value;
  final Color? backgroundColor;
  final Color? borderColor;
  final TextStyle? labelStyle;
  final TextStyle? valueStyle;

  const FieldMolecule({
    super.key,
    required this.label,
    required this.value,
    this.backgroundColor,
    this.borderColor,
    this.labelStyle,
    this.valueStyle,
  });

  @override
  Widget build(BuildContext context) {


    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextAtom(
              text: label,
            ),
            const SizedBox(height: 6),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(
                 value,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
