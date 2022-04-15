import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CardFlipScreen extends HookWidget {
  static const listviewElementPosFlipHeader = 1.2;
  static const listviewElementPosLiquidHeader = 5;

  const CardFlipScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final offset = useState(0.0);
    useEffect(
      () {
        scrollController.addListener(() {
          offset.value = scrollController.offset;
        });
        return null;
      },
      [offset.value],
    );
    return Scaffold(
      body: Stack(
        children: [
          /// Flip Header
          // Positioned(
          //   top: -offset.value,
          //   left: 0,
          //   right: 0,
          //   child: Transform(
          //     transform: Matrix4.identity()
          //       ..setEntry(3, 2, 0.0009)
          //       ..rotateX(-offset.value / 100)
          //       ..rotateY(0)
          //       ..rotateZ(0.0),
          //     alignment: Alignment.center,
          //     child: Container(
          //       height: MediaQuery.of(context).size.height * 0.3,
          //       width: MediaQuery.of(context).size.width,
          //       margin: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
          //       decoration: BoxDecoration(
          //         color: Colors.orange,
          //         borderRadius: BorderRadius.circular(12),
          //       ),
          //       child: Center(
          //           child: Text(
          //         "Flippy Header",
          //         style: Theme.of(context).textTheme.headline3,
          //       )),
          //     ),
          //   ),
          // ),

          /// Liquid Header
          Positioned(
            top: -offset.value,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: WaveClipper(offset.value / 100),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                    child: Text(
                  "Liquid Header",
                  style: Theme.of(context).textTheme.headline3,
                )),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3 +
                  (offset.value * listviewElementPosLiquidHeader),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
              child: ListView.builder(
                controller: scrollController,
                itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.insert_emoticon),
                  title: Text("Item number $index"),
                ),
                itemCount: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  final double percentage;

  WaveClipper(this.percentage);

  @override
  Path getClip(Size size) {
    Path path = Path();
    final height = size.height * (1 - percentage);
    path.lineTo(0, height);
    path.quadraticBezierTo(
      size.width * 1 / 8,
      height - 40 * sin(20 * percentage).abs(),
      size.width * 1 / 4,
      height - 20 * sin(20 * percentage).abs(),
    );
    path.quadraticBezierTo(
      size.width * 3 / 8,
      height - 10 * sin(10 * percentage).abs(),
      size.width * 2 / 4,
      height - 30 * sin(10 * percentage).abs(),
    );
    path.quadraticBezierTo(
      size.width * 5 / 8,
      height - 50 * sin(20 * percentage).abs(),
      size.width * 3 / 4,
      height - 25 * sin(20 * percentage).abs(),
    );
    path.quadraticBezierTo(
      size.width * 7 / 8,
      height - 15 * sin(15 * percentage).abs(),
      size.width * 4 / 4,
      height - 30 * sin(15 * percentage).abs(),
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(WaveClipper oldClipper) => true;
}
