import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StarsHomescreen extends HookWidget {
  const StarsHomescreen({Key? key}) : super(key: key);

  /// will be double
  static const numberOfStarts = 500;
  @override
  Widget build(BuildContext context) {
    final starsPositionsA = useState([
      ...List.generate(
        numberOfStarts,
        (_) => Offset(
            Random()
                .nextInt(MediaQuery.of(context).size.width.toInt())
                .toDouble(),
            Random()
                .nextInt(MediaQuery.of(context).size.height.toInt())
                .toDouble()),
      )
    ]);

    final starsPositionsB = useState([
      ...List.generate(
        numberOfStarts,
        (_) => Offset(
            Random()
                .nextInt(MediaQuery.of(context).size.width.toInt())
                .toDouble(),
            Random()
                .nextInt(MediaQuery.of(context).size.height.toInt())
                .toDouble()),
      )
    ]);

    final starsPortionAController = useAnimationController(
      lowerBound: 1,
      upperBound: 2,
      duration: const Duration(milliseconds: 400),
    );
    final starsPortionBController = useAnimationController(
      lowerBound: 1,
      upperBound: 2,
      duration: const Duration(milliseconds: 400),
    );

    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Stack(
          children: [
            /// randomly place the starts
            for (final offset in starsPositionsA.value)
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                left: offset.dx,
                top: offset.dy,
                child: AnimatedBuilder(
                  animation: starsPortionAController,
                  builder: (context, child) => CustomPaint(
                    painter: StarPainter(
                      radius: starsPortionAController.value,
                      offset: const Offset(0, 0),
                    ),
                  ),
                ),
              ),

            for (final offset in starsPositionsB.value)
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                left: offset.dx,
                top: offset.dy,
                child: AnimatedBuilder(
                  animation: starsPortionBController,
                  builder: (context, child) => CustomPaint(
                    painter: StarPainter(
                      radius: starsPortionBController.value,
                      offset: const Offset(0, 0),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Start the show'),
        onPressed: () {
          // toggle between two animation controllers
          Timer.periodic(const Duration(milliseconds: 600), (_) {
            if (starsPortionAController.isCompleted) {
              starsPortionAController.reverse();
              starsPortionBController.forward();
            } else {
              starsPortionAController.forward();
              starsPortionBController.reverse();
            }
          });
        },
        icon: const Icon(Icons.star),
      ),
    );
  }
}

class StarPainter extends CustomPainter {
  final Offset offset;
  final double radius;

  StarPainter({
    required this.radius,
    required this.offset,
  });
  @override
  void paint(Canvas canvas, Size size) {
    // draw a circle
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 2;

    canvas.drawCircle(offset, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
