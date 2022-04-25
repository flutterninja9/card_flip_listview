import 'package:card_flip_listview/cuberto_clone/screens/mouse_following_ui_screen.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
    required this.pointerState,
  }) : super(key: key);

  final ValueNotifier<PointerState> pointerState;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: MouseRegion(
        child: Container(
          color: Colors.pinkAccent.withOpacity(0.2),
        ),
      ),
    );
  }
}
