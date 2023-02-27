// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class NeuPage extends StatelessWidget {
  final child;
  const NeuPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Center(child: child),
      ),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular((12)),
          boxShadow: [
            // blur bottom
            BoxShadow(
              color: Colors.grey.shade600,
              blurRadius: 15,
              offset: Offset(5, 5),
            ),
            // blur top
            BoxShadow(
              color: Colors.white,
              blurRadius: 15,
              offset: Offset(-5, -5),
            )
          ]),
    );
  }
}
