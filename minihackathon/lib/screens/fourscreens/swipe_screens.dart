import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minihackathon/screens/fourscreens/first_screens.dart';
import 'package:minihackathon/screens/fourscreens/fourth_screen.dart';
import 'package:minihackathon/screens/fourscreens/second_screens.dart';
import 'package:minihackathon/screens/fourscreens/third_screen.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController  _controller = PageController(
  initialPage: 0,
  );
   
  @override
  void dispose () {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return PageView(
    controller: _controller,
    children: [
      first_Screens(),
      Seconds(),
      Third(),
      Fourth(),
    ],
    );
  }
}