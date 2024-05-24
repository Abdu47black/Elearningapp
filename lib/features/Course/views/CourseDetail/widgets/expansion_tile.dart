import 'package:fidel/common/widgets/listTile/expanison_list_tile.dart';
import 'package:flutter/material.dart';

class MExpansionTile extends StatelessWidget {
  const MExpansionTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'What You\'ll Learn:',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        MExpansionList(
          title: 'Week 1: Getting Started with Flutter',
          list1: Text('Introduction to Flutter and Dart',
              style: Theme.of(context).textTheme.headlineSmall),
          list2: Text('Setting up the development environment',
              style: Theme.of(context).textTheme.headlineSmall),
          list3: Text('Building your first Flutter app',
              style: Theme.of(context).textTheme.headlineSmall),
        ),
        MExpansionList(
          title: 'Week 2: Flutter Basics',
          list1: Text('Understanding widgets and the widget tree',
              style: Theme.of(context).textTheme.headlineSmall),
          list2: Text('Working with basic widgets (Text, Image, Container)',
              style: Theme.of(context).textTheme.headlineSmall),
          list3: Text('Building layouts using Rows and Columns',
              style: Theme.of(context).textTheme.headlineSmall),
        ),
        MExpansionList(
          title: 'Week 3: State Management and Navigation',
          list1: Text('Managing state in Flutter applications',
              style: Theme.of(context).textTheme.headlineSmall),
          list2: Text(
              'Using setState, Provider, and other state management techniques',
              style: Theme.of(context).textTheme.headlineSmall),
          list3: Text('Navigation and routing in Flutter apps',
              style: Theme.of(context).textTheme.headlineSmall),
        ),
        MExpansionList(
          title: ' Week 4: Advanced Flutter Concepts',
          list1: Text('Handling user input with forms and validation',
              style: Theme.of(context).textTheme.headlineSmall),
          list2: Text('Fetching data from APIs',
              style: Theme.of(context).textTheme.headlineSmall),
          list3: Text('Introduction to Flutter animations',
              style: Theme.of(context).textTheme.headlineSmall),
        ),
      ],
    );
  }
}
