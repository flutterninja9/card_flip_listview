import 'package:card_flip_listview/cuberto_clone/widgets/blend_mask.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// states of pointer
/// 1. hovering on link
/// 2. hovering on header -> display large circular widget beneath
/// 3. idle -> simple small circle following the pointer

enum PointerState { idle, hoverLink, hoverHeader }

class MouseFollowingUiScreen extends HookWidget {
  const MouseFollowingUiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pointerOffset = useState(const Offset(0, 0));
    final pointerState = useState(PointerState.idle);

    return Scaffold(
      body: MouseRegion(
        onHover: (data) {
          pointerOffset.value = Offset(data.position.dx, data.position.dy);
          print(
            "[POSITION]: dx -> ${data.position.dx} dy -> ${data.position.dy}",
          );
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                top: pointerOffset.value.dy,
                left: pointerOffset.value.dx,
                child: PointerStateWidget(state: pointerState.value),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                      child: MouseRegion(
                        onHover: (_) {
                          pointerState.value = PointerState.idle;
                        },
                        child: Container(),
                      ),
                    ),
                    Expanded(
                      child: MouseRegion(
                          onHover: (_) {
                            pointerState.value = PointerState.hoverLink;
                          },
                          onExit: (_) {},
                          child: const Center(
                            child: BlendMask(
                              blendMode: BlendMode.difference,
                              child: Text(
                                "HELLO!",
                                style: TextStyle(
                                  fontSize: 55,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )),
                    ),
                    Expanded(
                      child: MouseRegion(
                          onHover: (_) {
                            pointerState.value = PointerState.hoverHeader;
                          },
                          child: Container()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
      case PointerState.hoverLink:
        return Container(
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
            color: Colors.deepOrangeAccent,
            shape: BoxShape.circle,
          ),
        );
      case PointerState.hoverHeader:
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
