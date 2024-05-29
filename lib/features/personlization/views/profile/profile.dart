import 'package:fidel/common/widgets/AppBar/app_bar.dart';
import 'package:fidel/common/widgets/Images/circlular_image.dart';
import 'package:fidel/common/widgets/Texts/section_heading.dart';
import 'package:fidel/features/personlization/views/profile/Widgets/profile_menu.dart';
import 'package:fidel/util/constants/image_strings.dart';
import 'package:fidel/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        showBackArrow: true,
        title:
            Text('Profile', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(Size.defaultSpace),
        child: Column(
          children: [
            /// --- profile
            SizedBox(
              width: double.infinity,
              child: Column(children: [
                const MCircularImage(
                    width: 90,
                    height: 90,
                    image: MImages.profileImage,
                    isNetworkImage: false),
                TextButton(
                    onPressed: () {},
                    child: Text('Change Profile Picture',
                        style: Theme.of(context).textTheme.headlineSmall))
              ]),
            ),

            // Details
            const SizedBox(height: Size.sm),
            const Divider(),
            const SizedBox(height: Size.sm),
            const MSectionHeading(
                title: "Profile Information", showActionButton: false),

            MProfileMenu(title: 'Name', value: 'Aqmada P', onPressed: () {}),
            MProfileMenu(
                title: 'Username', value: 'Perbaytes', onPressed: () {}),
            const SizedBox(height: Size.sm),
            const Divider(),
            const SizedBox(height: Size.sm),
            const SizedBox(height: Size.sm),
            const MSectionHeading(
                title: "Personal Information", showActionButton: false),
            const SizedBox(height: Size.sm),
            MProfileMenu(
                title: 'User ID',
                value: '45289',
                icon: Iconsax.copy,
                onPressed: () {}),
            MProfileMenu(
                title: 'E-mail',
                value: 'perbaytes@perbaytes.com',
                onPressed: () {}),
            MProfileMenu(
                title: 'Phone Number', value: '+25166206165', onPressed: () {}),
            MProfileMenu(title: 'Gender', value: 'male', onPressed: () {}),
            MProfileMenu(
                title: 'DateofBirth', value: '10 Oct 2003', onPressed: () {}),
            const Divider(),
            const SizedBox(height: Size.sm),
            Center(
                child: TextButton(
              onPressed: () {},
              child: const Text(
                'Delete Account',
                style: TextStyle(color: Colors.red),
              ),
            ))
          ],
        ),
      )),
    );
  }
}
