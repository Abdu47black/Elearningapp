import 'package:fidel/common/widgets/Container/circular_container.dart';
import 'package:fidel/common/widgets/EdgeWidgets/curved_edge.dart';
import 'package:fidel/util/constants/colors.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MPrimaryHeaderContainer extends StatelessWidget {
  const MPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MCurvedEdgeWidgets(
      child: Container(
        color: MColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
            height: 200,
            child: Container(
              color: MColors.primaryColor,
              child: Stack(
                children: [
                  Positioned(
                      top: -150,
                      right: -250,
                      child: CircularContainer(
                        backgroundColor: MColors.white.withOpacity(0.1),
                      )),
                  Positioned(
                      top: 100,
                      right: 300,
                      child: CircularContainer(
                        backgroundColor: MColors.white.withOpacity(0.1),
                      )),
                  child,
                ],
              ),
            )),
      ),
    );
  }
}
