// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class LayoutBuilderWithPrint extends StatelessWidget {
  const LayoutBuilderWithPrint({
    required this.child,
    super.key,
    this.tag,
  });

  final Widget child;
  final String? tag;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        final maxWidth = constraints.maxWidth;
        final minHeight = constraints.minHeight;
        final minWidth = constraints.minWidth;

        final tag = this.tag == null ? '' : '[${this.tag}] ';

        print('${tag}Max: height: $maxHeight, width: $maxWidth');
        print('${tag}Min: height: $minHeight, width: $minWidth');

        return child;
      },
    );
  }
}
