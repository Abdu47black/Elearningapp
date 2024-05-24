// import 'package:fidel/util/constants/colors.dart';
import 'package:flutter/material.dart';

class MSettingsMenuTile extends StatelessWidget {
  const MSettingsMenuTile({super.key, required this.title, this.trailing});

  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      ),
      trailing: trailing,
    );
  }
}
