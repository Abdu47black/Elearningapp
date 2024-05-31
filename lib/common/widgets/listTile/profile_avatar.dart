import 'package:fidel/features/personlization/controllers/user_controller.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:flutter/material.dart';

class MProfieAvatar extends StatelessWidget {
  const MProfieAvatar({
    super.key,
    required Future? Function() onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return ListTile(
      leading: const CircleAvatar(
        maxRadius: 50,
        backgroundImage: AssetImage(MImages.profileImage),
      ),
      title: Text(
        controller.user.value.fullName,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: MColors.white),
      ),
      subtitle: Text(
        controller.user.value.email,
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: MColors.white),
      ),
    );
  }
}
