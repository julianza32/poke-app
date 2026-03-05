import 'package:flutter/material.dart';
import 'package:global66/features/pokemon/presentation/desing/molecules/navbar_molecule.dart';

class PageTemplate extends StatelessWidget {
  const PageTemplate({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final location = ModalRoute.of(context)?.settings.name ?? '';
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: child,
      ),
      bottomNavigationBar: NavbarMolecule(location: location),
    );
  }
}
