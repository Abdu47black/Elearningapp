import 'package:flutter/material.dart';

class MExpansionList extends StatelessWidget {
  const MExpansionList({
    super.key,
    required this.title,
    required this.list1,
    required this.list2,
    required this.list3,
  });
  final String title;
  final Widget list1;
  final Widget list2;
  final Widget list3;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title, style: Theme.of(context).textTheme.headlineSmall),
      children: [
        ListTile(
          title: list1,
        ),
        ListTile(
          title: list2,
        ),
        ListTile(
          title: list3,
        ),
      ],
    );
  }
}
