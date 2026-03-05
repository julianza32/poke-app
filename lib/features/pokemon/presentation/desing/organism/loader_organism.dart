import 'package:flutter/material.dart';

class LoaderOrganism extends StatefulWidget {
  const LoaderOrganism({super.key, this.size = 80.0});

  final double size;

  @override
  State<LoaderOrganism> createState() => _LoaderOrganismState();
}

class _LoaderOrganismState extends State<LoaderOrganism>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: _controller,
        child: Image.asset(
          'assets/images/Loader.png',
          width: widget.size,
          height: widget.size,
        ),
      ),
    );
  }
}