import 'package:flutter/material.dart';

class GenderBarMolecule extends StatelessWidget {
  final  double malePercent; // 0.0 - 1.0
  final Color maleColor;
  final Color femaleColor;
  final String label;

  const GenderBarMolecule({
    super.key,
    required this.malePercent,
    this.maleColor = const Color(0xFF2F56C8),
    this.femaleColor = const Color(0xFFFF7FA0),
    this.label = 'Género',
  });

  @override
  Widget build(BuildContext context) {
    final femalePercent = 100 - malePercent;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Text(
            label 
          ),
        ),
        const SizedBox(height: 12),
        LayoutBuilder(builder: (context, constraints) {
          final totalWidth = constraints.maxWidth;
          final maleWidth = totalWidth * malePercent;
          return Column(
            children: [
              Container(
                height: 14,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: maleWidth/100,
                      decoration: BoxDecoration(
                        color: maleColor,
                        borderRadius: BorderRadius.horizontal(
                          left: const Radius.circular(12),
                          right: Radius.circular(malePercent == 100 ? 12 : 0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: femalePercent == 0.0 ? Colors.transparent : femaleColor,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(malePercent == 0 ? 12 : 0),
                            right: const Radius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.male, size: 20, color: Colors.grey[800]),
                      const SizedBox(width: 6),
                      Text(
                        '${(malePercent).toStringAsFixed(1)}%',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '${(femalePercent ).toStringAsFixed(1)}%',
                      ),
                      const SizedBox(width: 6),
                      Icon(Icons.female, size: 20, color: Colors.grey[800]),
                    ],
                  ),

                ],
              ),
              const SizedBox(height: 12),
            ],
          );
        }),
      ],
    );
  }
}
