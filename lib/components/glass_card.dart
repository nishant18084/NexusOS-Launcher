import 'dart:ui';
import 'package:flutter/material.dart';
import '../theme/nexus_theme.dart';

class GlassCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final double borderRadius;

  const GlassCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16.0),
    this.borderRadius = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: NexusTheme.cardBg,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: NexusTheme.borderGlow, width: 1.2),
          ),
          child: child,
        ),
      ),
    );
  }
}
