import 'package:fidel/common/widgets/AppBar/app_bar.dart';
import 'package:fidel/common/widgets/Container/rounded_container.dart';
import 'package:flutter/material.dart';

class CoursePlayingScreen extends StatelessWidget {
  const CoursePlayingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(title: Text('Hey Mom! ')),
      body: MRoundedContainer(
        backgroundColor: Colors.red,
        height: 200,
        child: Column(children: [
          SizedBox(
            height: 80,
            child: ListView(
              children: const [
                ListTile(
                  title: Text('Introducion to flutter!'),
                  subtitle: Text('love you mom'),
                )
              ],
            ),
          ),
          const Text.rich(TextSpan(text: 'Hey mom!❤️❤️'))
        ]),
      ),
    );
  }
}
