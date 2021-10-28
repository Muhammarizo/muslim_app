import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainEntranceScreen extends StatefulWidget {
  static String id = 'main_entrance_screen';

  @override
  _MainEntranceScreenState createState() => _MainEntranceScreenState();
}

class _MainEntranceScreenState extends State<MainEntranceScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation =
        CurvedAnimation(parent: controller!, curve: Curves.easeInOutCubic);
    controller!.forward();
    controller!.addListener(() {
      setState(() {
        print(animation!.value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topRight,
              child: Stack(
                children: [
                  Image(
                    image: AssetImage('images/topright0.png'),
                    height: animation!.value * 143.0,
                    width: animation!.value * 150.0,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Image(
                image: AssetImage('images/center.png'),


              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Stack(
                children: [
                  Image(
                    image: AssetImage('images/bottomleft0.png'),
                    width: animation!.value * 157,
                    height: animation!.value * 160,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
