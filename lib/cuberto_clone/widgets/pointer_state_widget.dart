import 'package:card_flip_listview/cuberto_clone/screens/mouse_following_ui_screen.dart';
import 'package:flutter/material.dart';

/// states of pointer
/// 1. hovering on link
/// 2. hovering on header -> display large circular widget beneath
/// 3. idle -> simple small circle following the pointer

/// Returns a pointer widget that follows the pointer
/// based on the [state]
class PointerStateWidget extends StatefulWidget {
  const PointerStateWidget({
    Key? key,
    required this.state,
  }) : super(key: key);
  final PointerState state;
  @override
  State<PointerStateWidget> createState() => _PointerStateWidgetState();
}

class _PointerStateWidgetState extends State<PointerStateWidget> {
  @override
  Widget build(BuildContext context) {
    switch (widget.state) {
      case PointerState.idle:
        return Container(
          height: 10,
          width: 10,
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        );
      case PointerState.hoverHeader:
        return Container(
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        );
      case PointerState.hoverLink:
        return Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.pinkAccent.withOpacity(0.6),
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Text("Hovering on a header"),
          ),
        );
    }
  }
}
