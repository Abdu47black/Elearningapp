// import 'dart:convert';

// import 'package:fidel/common/widgets/AppBar/app_bar.dart';
// import 'package:fidel/common/widgets/Layouts/grid_layout.dart';
// import 'package:fidel/util/constants/colors.dart';
// import 'package:fidel/util/helpers/helper_functions.dart';
// import 'package:flutter/material.dart';
// import 'package:fidel/util/constants/sizes.dart';

// import 'package:fidel/common/styles/shadows.dart';
// import 'package:fidel/common/widgets/Container/rounded_container.dart';
// import 'package:fidel/common/widgets/Texts/brandtitlewith_verifcarion.dart';
// import 'package:fidel/common/widgets/Texts/m_course_title_text.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';

// class CoursePlayingScreen extends StatelessWidget {
//   const CoursePlayingScreen({super.key});

//   //  List info=[];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: const MAppBar(showBackArrow: true, title: Text('Tutorial ')),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(18.0),
//             child: Column(
//               children: [
//                 Container(
//                   padding: const EdgeInsets.all(20),
//                   width: Mhelper.screenWidth(),
//                   decoration: BoxDecoration(
//                       color: Mhelper.isDarkMode(context)
//                           ? MColors.containerBackground
//                           : MColors.accent,
//                       borderRadius: const BorderRadius.only(
//                           topRight: Radius.circular(Size.iconxlg))),
//                   height: 240,
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         ///--- card Texts
//                         SelectableText('Next tutorial',
//                             style: Theme.of(context).textTheme.headlineSmall),
//                         Expanded(
//                           child: SelectableText('Introduction to ',
//                               style: Theme.of(context).textTheme.headlineLarge),
//                         ),
//                         Expanded(
//                           child: SelectableText('Flutter ',
//                               style: Theme.of(context).textTheme.headlineLarge),
//                         ),

//                         ///----Timer icons with play button
//                         Row(
//                           children: [
//                             const Icon(Icons.timer, size: 20),
//                             const SizedBox(width: Size.sm),
//                             const Text('60min'),
//                             const Expanded(child: SizedBox()),
//                             Container(
//                               decoration: const BoxDecoration(boxShadow: [
//                                 BoxShadow(
//                                     color: Color.fromRGBO(255, 231, 238, 1),
//                                     blurRadius: 30,
//                                     offset: Offset(4, 8))
//                               ]),
//                               child: const Icon(
//                                 Icons.play_circle_fill,
//                                 color: Colors.white,
//                                 size: 50,
//                               ),
//                             )
//                           ],
//                         ),
//                       ]),
//                 ),
//                 const SizedBox(height: Size.defaultSpace),
//                 Text('Week 1 : Introducion 1',
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.headlineMedium),
//                 const SizedBox(height: Size.spaceBtwInputFields),
//                 const Mvideolists(),
//                 const SizedBox(height: Size.spaceBtwSections),
//                 const Mvideolists(),
//                 const SizedBox(height: Size.spaceBtwSections),
//                 const Mvideolists(),
//                 const SizedBox(height: Size.spaceBtwSections),
//                 const Mvideolists(),
//                 const SizedBox(height: Size.spaceBtwSections),
//                 const Mvideolists(),
//               ],
//             ),
//           ),
//         ));
//   }
// }

// class Mvideolists extends StatelessWidget {
//   const Mvideolists({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       width: Mhelper.screenWidth(),
//       decoration: const BoxDecoration(
//           color: MColors.containerBackground,
//           borderRadius: BorderRadius.all(Radius.circular(Size.lg))),
//       child: Row(
//         children: [
//           Container(
//             height: 89,
//             width: 89,
//             decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(25)),
//                 image: DecorationImage(
//                     image: AssetImage(
//                         'assets/images/others/forget_pass_icon.png'))),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 10),
//               Text(
//                 'Wait Till tomorrow ,i will know what to do with your!',
//                 style: Theme.of(context).textTheme.headlineSmall,
//               ),
//               Text(
//                 'Wait Till tomorrow ,i will know what to do with your!',
//                 style: Theme.of(context).textTheme.headlineSmall,
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:fidel/common/widgets/AppBar/app_bar.dart';
import 'package:fidel/features/Course/views/CourseDetail/widgets/expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CoursePlayingScreen extends StatefulWidget {
  const CoursePlayingScreen({super.key});

  @override
  CoursePlayingScreenState createState() => CoursePlayingScreenState();
}

class CoursePlayingScreenState extends State<CoursePlayingScreen> {
//   String videoId;

  final videoURL =
      "https://www.youtube.com/watch?v=1ukSR1GRtMU&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ";
// videoId = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=BBAyRBTfsOU");

  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(autoPlay: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MAppBar(showBackArrow: true, title: Text('hello mom')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.amber,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.amber,
                    handleColor: Colors.amberAccent,
                  ),
                  onReady: () {
                    debugPrint(videoURL);
                  },
                ),
              ),
              const MExpansionTile()
            ],
          ),
        ));
  }
}
