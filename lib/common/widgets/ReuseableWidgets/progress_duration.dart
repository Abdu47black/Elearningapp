import 'package:flutter/material.dart';

class MProgressDuration extends StatelessWidget {
  const MProgressDuration({
    super.key,
    required this.completed,
    required this.outof,
  });
  final String completed;
  final String outof;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(completed, style: Theme.of(context).textTheme.headlineMedium),
        Text(outof, style: Theme.of(context).textTheme.headlineSmall),
      ],
    );
  }
}
