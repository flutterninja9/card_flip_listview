import 'package:card_flip_listview/cuberto_clone/screens/mouse_following_ui_screen.dart';
import 'package:card_flip_listview/cuberto_clone/widgets/blend_mask.dart';
import 'package:card_flip_listview/cuberto_clone/widgets/bordered_text.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
    required this.pointerState,
  }) : super(key: key);

  final ValueNotifier<PointerState> pointerState;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MouseRegion(
              onHover: (_) {
                pointerState.value = PointerState.hoverHeader;
              },
              onExit: (_) {
                pointerState.value = PointerState.idle;
              },
              child: const BlendMask(
                blendMode: BlendMode.difference,
                child: BorderedText(text: "WEBSITES"),
              )),
          MouseRegion(
              onHover: (_) {
                pointerState.value = PointerState.hoverHeader;
              },
              onExit: (_) {
                pointerState.value = PointerState.idle;
              },
              child: const BlendMask(
                blendMode: BlendMode.difference,
                child: BorderedText(text: "APPS"),
              )),
          MouseRegion(
              onHover: (_) {
                pointerState.value = PointerState.hoverHeader;
              },
              onExit: (_) {
                pointerState.value = PointerState.idle;
              },
              child: const BlendMask(
                blendMode: BlendMode.difference,
                child: BorderedText(text: "BRANDING"),
              )),
        ],
      ),
    );
  }
}
