import 'package:flutter/material.dart';

enum PrimaryButtonSize { full, small }

class PrimaryButtonAtom extends StatelessWidget {
  const PrimaryButtonAtom({
    super.key,
    required this.onPress,
    required this.title,
    this.size = PrimaryButtonSize.full,
    this.showDot = false,
    this.totalSteps,
    this.currentStep,
  });

  final VoidCallback onPress;
  final String title;
  final PrimaryButtonSize size;
  final bool showDot;
  final int? totalSteps;
  final int? currentStep;

  @override
  Widget build(BuildContext context) {
    final isFull = size == PrimaryButtonSize.full;

    final button = ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1E88E5),
        shape: const StadiumBorder(),
        padding: EdgeInsets.symmetric(
            vertical: isFull ? 18 : 8, horizontal: isFull ? 16 : 12),
        textStyle:
            TextStyle(fontSize: isFull ? 18 : 12, fontWeight: FontWeight.w700),
        minimumSize:
            Size(isFull ? double.infinity : 64, 0), 
      ),
      child: Text(title, style: const TextStyle(color: Colors.white)),
    );

    if (showDot) {
      final indicator = _buildIndicators();
      if (isFull) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            indicator,
            const SizedBox(height: 12),
            SizedBox(width: double.infinity, child: button),
          ],
        );
      }

      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          button,
          const SizedBox(width: 12),
          indicator,
        ],
      );
    }

    return isFull ? SizedBox(width: double.infinity, child: button) : button;
  }

  Widget _buildIndicators() {
    if (totalSteps == null || currentStep == null || totalSteps! < 1) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 48,
            height: 12,
            decoration: const BoxDecoration(
              color: Color(0xFF1E88E5),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 12,
            height: 12,
            decoration: const BoxDecoration(
              color: Color(0xFFD8E3FB),
              shape: BoxShape.circle,
            ),
          ),
        ],
      );
    }

    final total = totalSteps!;
    final current = currentStep!.clamp(1, total);
    final List<Widget> items = [];
    for (var i = 1; i <= total; i++) {
      if (i > 1) items.add(const SizedBox(width: 12));
      if (i == current) {
        items.add(Container(
          width: 48,
          height: 12,
          decoration: const BoxDecoration(
            color: Color(0xFF1E88E5),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ));
      } else {
        items.add(Container(
          width: 12,
          height: 12,
          decoration: const BoxDecoration(
            color: Color(0xFFD8E3FB),
            shape: BoxShape.circle,
          ),
        ));
      }
    }

    return Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: items);
  }
}
